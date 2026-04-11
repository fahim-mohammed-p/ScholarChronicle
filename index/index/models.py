from django.db import models
from django.contrib.auth.models import User

class studentProfile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE, related_name='profile')
    full_name = models.CharField(max_length=255, null=True, blank=True)
    email = models.EmailField(max_length=255, null=True, blank=True)
    roll_number = models.CharField(max_length=500, unique=True)
    phone = models.CharField(max_length=15) 
    is_banned = models.BooleanField(default=False)
    avatar = models.IntegerField(default=0) 

    def __str__(self):
        return f"{self.full_name if self.full_name else self.user.username}"
    

class courses(models.Model):
    title = models.CharField(max_length=200)
    description = models.TextField()
    icon_class=models.CharField(max_length=100,default="fa-solid fa-graduation-cap")
    duration = models.CharField(max_length=50)
    fee = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)

    def __str__(self):
        return self.title


class entrollment(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    courses = models.ForeignKey(courses, on_delete=models.CASCADE)
    entrolled_at = models.DateTimeField(auto_now_add=True)

    
    class Meta:
        unique_together = ('user', 'courses')

    def __str__(self):
        return f"{self.user.username} enrolled in {self.courses.title}"