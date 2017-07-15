#import "ZWRootViewController.h"

@implementation ZWRootViewController {
    NSMutableArray *_objects;
}

- (void)loadView {
    [super loadView];

    UIView *view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].applicationFrame];

    [view setBackgroundColor:[UIColor whiteColor]];

    self.title = @"Respring Button";    

    UIButton *button = [UIButton
    buttonWithType:UIButtonTypeCustom];
    [button addTarget:self
               action:@selector(respring)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Respring" forState:UIControlStateNormal];
    button.frame = CGRectMake(0, 50, 100, 100);
    button.center = view.center;
    [button setTitleColor: self.view.tintColor
    forState:UIControlStateNormal];

    [view addSubview:button];

    self.view = view;
}

- (IBAction) respring {

    //pid_t pid;
    //int status;
    //const char* args[] = {"killall", "backboardd", NULL};
    //posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char* const*)args, NULL);
    system("killall SpringBoard");
    //waitpid(pid, &status, WEXITED);
}@end