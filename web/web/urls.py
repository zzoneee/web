"""web URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
# from django.contrib import admin
from django.urls import path,include,re_path

from django.conf.urls import url
from django.views import static
from django.conf import settings

from django.views.generic.base import TemplateView

urlpatterns = [
    # path('admin/', admin.site.urls),
    path('api/user/', include('ex.Student.urls')),
    path('api/report/', include('ex.Report.urls')),
    path('api/teacher/', include('ex.Teacher.urls')),
    path('api/notice/', include('ex.Notice.urls')),
    path('api/privateLetter/', include('ex.PrivateLetter.urls')),
    path('api/posts/', include('ex.Post.urls')),
    path('api/experiment/', include('ex.Experiment.urls')),
    path('api/classes/', include('ex.Classes.urls')),
    path('api/TLForum/', include('ex.TLForum.urls')),

    # url(r'^static/(?P<path>.*)$', static.serve,
    #     {'document_root': settings.STATIC_ROOT}, name='static'),

    path('downLoad/', include('ex.downLoad.urls')),
    path('', TemplateView.as_view(template_name='index.html')),

]