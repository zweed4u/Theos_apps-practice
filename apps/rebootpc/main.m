#import "ZWAppDelegate.h"

int main(int argc, char *argv[]) {
	system("source /var/root/.bashrc");
	system("/var/mobile/reboot.sh");
	[NSThread sleepForTimeInterval:1.0];
	exit(0);
}
