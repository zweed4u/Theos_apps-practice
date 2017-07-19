#import "ZWAppDelegate.h"

int main(int argc, char *argv[]) {
	system("source /var/root/.bashrc");
	system("/var/mobile/lock.sh");
	[NSThread sleepForTimeInterval:3.0];
	exit(0);
}
