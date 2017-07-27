include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = rebootPC
rebootPC_FILES = main.m ZWAppDelegate.m ZWRootViewController.m
rebootPC_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"rebootPC\"" || true
