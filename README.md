#[Theos](https://github.com/theos/theos) 

The setup is the hard part. There are plenty of tutorials online for that but I'll include what I personally gleaned and found useful.

First and foremost this is developed on mac osx so I have xCode and all those goodies for sdks and toolchain crap.

A bunch of environment touch ups should be put into action first. Set your environment variables in your bashrc with a trailing slash for your theos directory and make sure to include the `THEOS_DEVICE_IP` export with your device's local ip. It makes for a pleasant experience (`make package install`)

I also found that my bashrc wasnt persistent. I am an idiot. You are not. Be sure to source it in `/etc/profile`

I pulled the theos repo to my home directory to make things nice. None of that var or opt deep directory stuff. I guess you could say I preemptively knew this though because this is where I had set my theos var at the beginning.

I pulled my personal substrate lib and header from device. Are these device specific? Why these arent bundled with theos is beyond me. It's a pain but you can always just pull from saurik himself. 
[http://apt.saurik.com/debs/mobilesubstrate_0.9.6301_iphoneos-arm.deb](http://apt.saurik.com/debs/mobilesubstrate_0.9.6301_iphoneos-arm.deb). Make sure this is the version of your substrate on device. You can check this by means of terminal `dpkg -s mobilesubstrate | grep Version` Make sure to take rename the subtrate libsubstrate.dylib and place in theos lib folder while the header should be named substrate.h and placed in theos include folder

You should be good to go. Try running `$THEOS/bin/nic.pl` from outside of your installation folder. You should see the New Instance Creator. Choose an option and get to it. Safe bet is just an application. Cd into that directory and go crazy.

> Here's where you do objective c stuff, modify Makefile, and pretty up control file

After wrapping up your project while within the folder run `make package` this will build your application into a deb file for installation. This will be found in the packages folder that the command has made. This directory acts a software version control and will keep prior iterations/builds of your project. When you run `make package` a deb gets built.

From here you can scp the deb over or run `make package install` which makes use of `THEOS_DEVICE_IP` variable to connect to your device and install it remotely. Regardless, to install a deb on your device locally: `dpkg -i <package_name>,deb` might as well be root while you're at it.

Thats all I have to say.