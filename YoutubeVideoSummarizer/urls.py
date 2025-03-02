from django.urls import path
from YoutubeVideoSummarizer import views

urlpatterns = [
    #path('admin/', admin.site.urls),
    path('', views.home),
    #path('donate', views.donate),
    path('<lang>', views.homelang),
    #path('<lang>/donate', views.donatelang),

    #API
    #path('api/summarize', views.summarize),

]
