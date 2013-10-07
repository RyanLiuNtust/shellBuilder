#
install the android plugin to eclipse, the following step will 
provide you how to build all setting which include NDK,SDK,ADT and code with vim plugins "vrapper"(optional)
#
Install IDE and Java first
-----------------
* 1.first install the IDE eclipse that is based on java code so the java need to be installed first(e.g. here using java 1.6 version)

(1)run the script by using "sh android_jsk" or sudo sh android_jsk to install java

(2)and download the eclipse by this website:

* 1.http://www.eclipse.org/downloads/packages/release/juno/sr1  which could be selected the version of os
or 
* 2.http://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/juno/SR1/eclipse-jee-juno-SR1-linux-gtk-x86_64.tar.gz  
which is for 64 bits ubuntu

Install ADT
-----------
(3)after installing the eclipse,you can add ADT plugin in eclipse by follwing the below
* 1.Start the eclipse and press the "Help" button in the top
* 2.select the "Install New Software"
* 3.press Add button and add Adt_plugin in the name
* 4.add the https://dl-ssl.google.com/android/eclipse/ in Location
* 5.and press ok ok and ok , and don't care about any waring informations

Install Android SDK
-------------------
(4)download the sdk http://developer.android.com/sdk/index.html in the download for other platforms blue button
* 1. unpack it and move it to the directory e.g. named as sdk or development

(5) and add the location of sdk to eclipse by following or this website: http://developer.android.com/sdk/installing/index.html
* 1.starting eclipse and press window button
* 2.in the left side, there is a android button which will hava sdk location in right side or sdk button
* 3.add sdk directory to it
* 4.download the android sdk versionr by move to DIR{sdk}/tools and run ./android

Install NDK for C++
-------------------
(6)ndk download from http://developer.android.com/tools/sdk/ndk/index.html
* 1.installation instruction http://developer.android.com/tools/sdk/ndk/index.html#installing

Download the vrapper
-------------------
(7)download vrapper by using eclipse same as (3)
* 1.the Location change as http://vrapper.sourceforge.net/update-site/stable

Others
------
(8)install the essential setting by running "android_required_packages.sh"

(9)some install web site can refer to "plugin_download_web.txt" and change location by the website which in txt

Install Opencv in eclipse
-------------------------
# If you want to install opencv on eclipse,please follw the following steps #
* 1.download the opencv by this web http://opencv.org/downloads.html and select the version u want
* 2.and change all "opencv-2.4.6.1" to the name of opencv u download
* 3.run the openCvBuilder.sh 
* 4.add the lib to eclipse by following this web http://docs.opencv.org/doc/tutorials/introduction/linux_eclipse/linux_eclipse.html 
    note that if u want to show image and load image by imread, the location must use /home/usr(xxx)/....

 Install opencv_sdk_for_android
------------------------------
* 1.Donwload from http://docs.opencv.org/doc/tutorials/introduction/android_binary_package/O4A_SDK.html
* 2.And refer to this web http://docs.opencv.org/doc/tutorials/introduction/android_binary_package/android_dev_intro.html 
  for the instruction of using opencv on android
#

#the "basic_installer.sh" is for some ubuntu plugins which includes guake terminal and some.....that will add in the future...#

Intsall Dark Theme for eclipse
------------------------------
# if you want to change the eclipse platform color,please follow the step below #
* 1.download the eclipse color theme by using eclipse with Help button that will includes the eclipse markerplace
* 2.enter the color theme or using URL for color theme in eclipse http://eclipsecolorthemes.org/?view=plugin
* 3.downloads the eclipse color theme and "eclipse 4 chrome theme(optional)"
* 4.download the dark theme by following this web https://github.com/guari/eclipse-ui-theme




 


