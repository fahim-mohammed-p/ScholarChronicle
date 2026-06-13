from django.test import TestCase, Client
from django.urls import reverse
from django.contrib.auth.models import User
from index.models import studentProfile

class RegistrationTestCase(TestCase):
    def setUp(self):
        self.client = Client()
        # Create an initial user
        self.user = User.objects.create_user(username='teststudent', password='testpassword123', email='test@student.com')
        self.profile = studentProfile.objects.create(user=self.user, email='test@student.com', roll_number='ROLL123')

    def test_signup_successful(self):
        # Test registering a brand new student
        response = self.client.post(reverse('sign'), {
            'username': 'newstudent',
            'email': 'new@student.com',
            'roll_number': 'ROLL456',
            'password': 'password123'
        })
        self.assertEqual(response.status_code, 302) # Redirects to login
        self.assertTrue(User.objects.filter(username='newstudent').exists())
        self.assertTrue(studentProfile.objects.filter(roll_number='ROLL456').exists())

    def test_duplicate_username(self):
        # Test registration with duplicate username
        response = self.client.post(reverse('sign'), {
            'username': 'teststudent', # Existing username
            'email': 'unique@student.com',
            'roll_number': 'ROLL999',
            'password': 'password123'
        })
        self.assertEqual(response.status_code, 200) # Stay on sign page
        self.assertEqual(response.context['error'], 'Username already exists')

    def test_duplicate_email(self):
        # Test registration with duplicate email
        response = self.client.post(reverse('sign'), {
            'username': 'unique_user',
            'email': 'test@student.com', # Existing email
            'roll_number': 'ROLL999',
            'password': 'password123'
        })
        self.assertEqual(response.status_code, 200) # Stay on sign page
        self.assertEqual(response.context['error'], 'Email already exists')

    def test_duplicate_roll_number(self):
        # Test registration with duplicate roll number
        response = self.client.post(reverse('sign'), {
            'username': 'unique_user',
            'email': 'unique@student.com',
            'roll_number': 'ROLL123', # Existing roll number
            'password': 'password123'
        })
        self.assertEqual(response.status_code, 200) # Stay on sign page
        self.assertEqual(response.context['error'], 'Roll number already exists')

    def test_duplicate_multiple_fields(self):
        # Test registration with multiple duplicate fields (username and roll number)
        response = self.client.post(reverse('sign'), {
            'username': 'teststudent', # Existing username
            'email': 'unique@student.com',
            'roll_number': 'ROLL123', # Existing roll number
            'password': 'password123'
        })
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.context['error'], 'Username & roll number already exist')

    def test_password_retained(self):
        # Test that password is sent back and retained on validation error
        response = self.client.post(reverse('sign'), {
            'username': 'teststudent', # Existing username
            'email': 'unique@student.com',
            'roll_number': 'ROLL999',
            'password': 'secret_password_123'
        })
        self.assertEqual(response.status_code, 200)
        # Verify the context contains the password and it is rendered in the HTML input
        self.assertEqual(response.context['password'], 'secret_password_123')
        self.assertContains(response, 'value="secret_password_123"')
