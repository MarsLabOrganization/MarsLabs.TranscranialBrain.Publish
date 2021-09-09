# https://www.raspberrypi.org/documentation/computers/using_linux.html#running-a-task-on-reboot

# Aşağıdaki komutla bilgisayar her açıldığında ilgili sh dosyasını çalıştırır.
# Bu bir reboot cronjob 'dır
# Console da pathini belirt.
# En sondaki & işareti uygulamanın arka planda çalışacağını belirtir.

# @reboot /home/pi/DotNetCoreApps/MarsLabs.TranscranialBrain.Publish/UI/runpi.sh &

# ----- SCRIPT BEGIN ------- #

cd /home/pi/DotNetCoreApps/WebApps/MarsLabs.TranscranialBrain.Publish/UI
sudo su
export ASPNETCORE_URLS="http://0.0.0.0:5000"
export ASPNETCORE_ENVIRONMENT="Production"
chmod 777 ./MarsLabs.TranscranialBrain.UI
./MarsLabs.TranscranialBrain.UI

# ----- SCRIPT  END  ------- #  