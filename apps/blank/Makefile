include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = blank
blank_FILES = main.m ZWAppDelegate.m ZWRootViewController.m
blank_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"blank\"" || true
