from django.contrib import admin
from .models.students import Students,ListOfStudents
from .models.courses import Savodxonlik,Backend,Frontend,GrafikDizayin,UchDdizayin,English,Robototexnika,FullStack,SMM,MobilIlova

# Register your models here.

admin.site.register([Savodxonlik,Frontend,FullStack,GrafikDizayin,UchDdizayin,English,Robototexnika,SMM,MobilIlova,ListOfStudents])


@admin.register(Students)
class StudentsAdmin(admin.ModelAdmin):
    list_display = 'id','full_name', 'username','user_id'
    list_filter = 'full_name',
    search_fields = 'full_name',