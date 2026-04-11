from django.contrib import admin
from django.conf import settings
from django.conf.urls.static import static
from django.urls import path
from . import views

urlpatterns = [
    
    path('admin/', admin.site.urls),
    path('', views.home, name='home'),
    path('login/', views.login_view, name='login'),
    path('sign/', views.sign_view, name='sign'),
    path('profile/', views.profile_view, name='profile'),
    path('courses/', views.course_view, name='courses'),
    path('reviews/', views.reviews_view, name='reviews'),
    path('about/', views.about_view, name='about'),

    path('enroll/<int:course_id>/', views.entroll_course, name='entroll_course'),
    path('drop/<int:course_id>/', views.drop_course, name='drop_course'),


    path('adbase/', views.adbase_view, name='adbase'),
    path('addash/', views.admin_dash, name='admindash'), 
    path('courses-manage/', views.admin_courses, name='adcourses'), 
    path('students/',views.students,name='students'),

    
    path('toggle/<int:user_id>/', views.toggle_ban, name='toggle_ban'),
    path('add-course/', views.add_course, name='add_course'),
    path('del-course/<int:course_id>/', views.del_course, name='del_course'),
    path('edit-course/<int:course_id>/',views.edit_course,name='edit_course')



]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)