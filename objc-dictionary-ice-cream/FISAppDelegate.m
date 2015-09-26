//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your custom method bodies here.
 
 */

- (NSArray *)namesForIceCream: (NSString *)iceCream {
    NSDictionary *iceCreamList = @{@"Joe":@"Peanut Butter and Chocolate", @"Tim":@"Natural Vanilla",
                                   @"Sophie":@"Mexican Chocolate", @"Deniz":@"Natural Vanilla",
                                   @"Tom":@"Mexican Chocolate", @"Jim":@"Natural Vanilla",
                                   @"Mark":@"Cookies 'n Cream"};
    NSArray *names = [iceCreamList allKeysForObject:iceCream];
    return names;
}

- (NSDictionary *)countsOfIceCream: (NSDictionary *)iceCreamByName {
    NSMutableDictionary *iceCreamNumber = [[NSMutableDictionary alloc] init];
    NSArray *iceCreamNames = [iceCreamByName allValues];
    for (NSString *iceCreamName in iceCreamNames) {
        if(!iceCreamNumber[iceCreamName]){
            iceCreamNumber[iceCreamName]= @([self namesForIceCream:iceCreamName].count);
        }
    }
    
    return iceCreamNumber;
}


@end
