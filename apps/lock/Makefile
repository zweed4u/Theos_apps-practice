include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = Lock
Lock_FILES = main.m ZWAppDelegate.m ZWRootViewController.m
Lock_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"Lock\"" || true
