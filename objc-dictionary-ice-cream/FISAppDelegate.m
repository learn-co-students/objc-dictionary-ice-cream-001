//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)namesForIceCream:(NSString *)iceCream {
    NSDictionary *iceCreamPreferences = @{@"Joe" : @"Peanut Butter and Chocolate",
                                          @"Tim"  : @"Natural Vanilla",
                                          @"Sophie" : @"Mexican Chocolate",
                                          @"Deniz" : @"Natural Vanilla",
                                          @"Tom" : @"Mexican Chocolate",
                                          @"Jim" : @"Natural Vanilla",
                                          @"Mark" : @"Cookies 'n Cream" };
    
    NSMutableArray *peopleWhoLikeFlavor = [[NSMutableArray alloc] init];
    
    for (NSString *name in iceCreamPreferences) {
        if ([iceCream isEqualToString:iceCreamPreferences[name]]) {
            [peopleWhoLikeFlavor addObject:name];
        }
    }
             
    return peopleWhoLikeFlavor;
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    NSMutableDictionary *countOfIceCreamFlavor = [[NSMutableDictionary alloc] init];
    
    for (NSString *name in iceCreamByName) {
        NSString *iceCreamFlavor = iceCreamByName[name];
        NSUInteger count = [[self namesForIceCream:iceCreamFlavor] count];
        countOfIceCreamFlavor[iceCreamFlavor] = [NSNumber numberWithUnsignedInteger:count];
    }
    
    return countOfIceCreamFlavor;
}

@end
