#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import "MainViewController.h"
//#import <flutter_pjsip/FlutterAppDelegate+Pjsip.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    [GeneratedPluginRegistrant registerWithRegistry:self];
//    [self setupPjsip:application rootController:self.window.rootViewController];
//    return [super application:application didFinishLaunchingWithOptions:launchOptions];
    
    BOOL rs = [super application:application didFinishLaunchingWithOptions:launchOptions];
    [GeneratedPluginRegistrant registerWithRegistry:self];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[MainViewController alloc] initWithProject:[[FlutterDartProject alloc] init]  nibName:nil bundle:nil];
    [self.window makeKeyAndVisible];
    [GeneratedPluginRegistrant registerWithRegistry:self];
//    [self setupPjsip:application rootController:self.window.rootViewController];
    return rs;
}

@end
