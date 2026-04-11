from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth import authenticate, login
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from django.contrib import messages
from .models import studentProfile, courses, entrollment

def home(request):
    return render(request, 'home.html')

def sign_view(request):
    if request.method == 'POST':
        u_name = request.POST['username']
        p_word = request.POST['password']
        email = request.POST['email']
        roll = request.POST['roll_number']

        user = User.objects.create_user(username=u_name, password=p_word, email=email)
        studentProfile.objects.create(user=user, roll_number=roll)
        messages.success(request, "Account created successfully!")
        return redirect('login')
    return render(request, 'sign.html')


def login_view(request):
    if request.method == 'POST':
        u_name = request.POST.get('username')
        p_word = request.POST.get('password')

        user_check = User.objects.filter(username=u_name).first()
        
        if user_check and not user_check.is_active:
            messages.error(request, 'You are banned by admin!')
            return redirect('login')

        user = authenticate(request, username=u_name, password=p_word)

        if user is not None:
            try:
                if hasattr(user, 'studentprofile') and user.studentprofile.is_banned:
                    messages.error(request, 'You are banned by admin!')
                    return redirect('login')
            except:
                pass

            login(request, user)
            if user.is_staff:
                return redirect('admindash')
            else:
                return redirect('home')
        else:
            messages.error(request, 'Invalid Username or Password!')
            return redirect('login')

    return render(request, 'login.html')

@login_required
def profile_view(request):
    profile, created = studentProfile.objects.get_or_create(user=request.user)
    user_courses = entrollment.objects.filter(user=request.user)

    if request.method == 'POST':
        avatar_val = request.POST.get('avatar')

        if avatar_val:
            profile.avatar = int(avatar_val) 
            profile.save()
            messages.success(request, 'Avatar updated!')
            return redirect('profile')

        profile.full_name = request.POST.get('first_name')
        profile.email = request.POST.get('email')
        profile.roll_number = request.POST.get('roll_number')
        profile.phone = request.POST.get('phone')


        request.user.email = request.POST.get('email')
        request.user.save()

        profile.save()
        messages.success(request, 'Profile updated successfully!')
        return redirect('profile')

    context = {
        'profile': profile,
        'user_courses': user_courses,
        'edit_mode': request.GET.get('edit') == 'true',
        'avatar_mode': request.GET.get('avatar') == 'true'
    }
    return render(request, 'profile.html', context)

def course_view(request):
    all_courses = courses.objects.all()
    entrolled_ids = []

    if request.user.is_authenticated:
        entrolled_ids = entrollment.objects.filter(user=request.user).values_list('courses_id', flat=True)

    return render(request, 'courses.html', {
        'course': all_courses,
        'entrolled_ids': list(entrolled_ids) 
    })

@login_required
def entroll_course(request, course_id):
    course_obj = get_object_or_404(courses, id=course_id)
    entrollment.objects.get_or_create(user=request.user, courses=course_obj)
    messages.success(request, f"{course_obj.title} started successfully!")
    return redirect('courses')

@login_required
def drop_course(request, course_id):
    course_obj = get_object_or_404(courses, id=course_id)
    entrollment.objects.filter(user=request.user, courses=course_obj).delete()
    messages.warning(request, f"Course dropped: {course_obj.title}")
    return redirect('courses')

@login_required
def reviews_view(request):
    return render(request, 'reviews.html')


def about_view(request):
    return render(request, 'about.html')






@login_required
def adbase_view(request):
    return render(request, 'adbase.html')


@login_required(login_url='login')
def admin_dash(request):
    if not request.user.is_staff:
        messages.error(request, 'Only admin can access!')
        return redirect('login')
    
    total_users = User.objects.count()
    total_courses = courses.objects.count()

    all_users = studentProfile.objects.all()
    all_courses = courses.objects.all()
    recent_entrollments = entrollment.objects.count()

    context={
        'total_users': total_users,
        'total_courses': total_courses,
        'all_users': all_users,
        'all_courses':all_courses,
        'recent_entrollments':recent_entrollments
    }
    return render(request, 'admin/admindash.html', context)

@login_required(login_url='login')
def toggle_ban(request,user_id):
    if not request.user.is_staff:
        messages.error(request,'Only admin can access')
        return redirect('login')
    
    profile = get_object_or_404(studentProfile, id=user_id)
    user = profile.user
    
    profile.is_banned = not profile.is_banned
    if profile.is_banned:
        user.is_active = False
    else:
        user.is_active = True

    user.save()   
    profile.save()

    action='Unbanned' if not profile.is_banned else 'Banned'
    messages.success(request, f'user {profile.user.username} {action}  successfull')
    return redirect('students')


@login_required(login_url='login')
def add_course(request):
    if not request.user.is_staff:
        messages.error(request,'Only admin can access')
        return redirect('login')
    
    if request.method == 'POST':
            title = request.POST.get('title')
            description = request.POST.get('description')
            duration = request.POST.get('duration')
            icon_class = request.POST.get('icon_class')
            fee = request.POST.get('fee')

            if title and description:
                courses.objects.create(
                    title=title,
                    description=description,
                    duration = duration,
                    icon_class = icon_class,
                    fee = fee
                    )
                messages.success(request,'New course added successfully')
                return redirect('adcourses')
    return redirect('admindash')


@login_required(login_url='login')
def del_course(request,course_id):
    if not request.user.is_staff:
        messages.error(request,'Only admin can access')
        return redirect('login')
    
    course = get_object_or_404(courses,id=course_id)
    course.delete()
    messages.error(request,'Course deleted successfully')
    return redirect('adcourses')

@login_required
def admin_courses(request):
    if not request.user.is_staff:
        messages.error(request, 'Only admin can access!')
        return redirect('login')
    
    all_courses = courses.objects.all()
    return render(request,'admin/adcourses.html',{'all_courses':all_courses})


@login_required
def edit_course(request,course_id):

    course_obj = get_object_or_404(courses, id=course_id)

    if request.method == 'POST':
        
        course_obj.title = request.POST.get('title')
        course_obj.description = request.POST.get('description')
        course_obj.fee = request.POST.get('fee')
        course_obj.duration = request.POST.get('duration')
        course_obj.icon_class = request.POST.get('icon_class')

        course_obj.save()
        messages.success(request,'Course updated successfull')
        return redirect ('adcourses')
    return redirect('adcourses')


@login_required
def students(request):
    if not request.user.is_staff:
        messages.error(request, 'Only admin can access!')
        return redirect('login')
    

    all_students= studentProfile.objects.filter(user__is_staff=False)

    return render(request,'admin/students.html',{'all_users':all_students})
    




    

