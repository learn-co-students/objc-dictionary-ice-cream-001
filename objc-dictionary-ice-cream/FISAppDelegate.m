//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)namesForIceCream:(NSString *)icecream {
    NSDictionary *iceCreamByName = @{ @"Joe"    : @"Peanut Butter and Chocolate",
                        @"Tim"    : @"Natural Vanilla"            ,
                        @"Sophie" : @"Mexican Chocolate"          ,
                        @"Deniz"  : @"Natural Vanilla"            ,
                        @"Tom"    : @"Mexican Chocolate"          ,
                        @"Jim"    : @"Natural Vanilla"            ,
                        @"Mark"   : @"Cookies 'n Cream"          };
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    for(NSString *key in iceCreamByName) {
        if ([iceCreamByName[key] isEqualToString:icecream]) {
            [result addObject:key];
        }
    }
    return result;
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    return nil;
}

@end
