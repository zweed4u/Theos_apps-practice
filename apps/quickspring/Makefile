include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = quickSpring
quickSpring_FILES = main.m ZWAppDelegate.m ZWRootViewController.m
quickSpring_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"quickSpring\"" || true
