include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = lock2
lock2_FILES = main.m ZWAppDelegate.m ZWRootViewController.m
lock2_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"lock2\"" || true
