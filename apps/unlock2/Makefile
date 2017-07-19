include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = unlock2
unlock2_FILES = main.m ZWAppDelegate.m ZWRootViewController.m
unlock2_FRAMEWORKS = UIKit CoreGraphics

include $(THEOS_MAKE_PATH)/application.mk

after-install::
	install.exec "killall \"unlock2\"" || true
