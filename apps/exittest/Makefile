include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = exittest
exittest_FILES = main.m ZWAppDelegate.m ZWRootViewController.m
exittest_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"exittest\"" || true
