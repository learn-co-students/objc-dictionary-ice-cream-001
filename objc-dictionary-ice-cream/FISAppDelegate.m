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
-(NSArray*)namesForIceCream: (NSString *)iceCream {
    NSDictionary * flavorPreference = @{ @"Joe" : @"Peanut Butter and Chocolate",
                                         @"Tim" : @"Natural Vanilla",
                                         @"Sophie" : @"Mexican Chocolate",
                                         @"Deniz" : @"Natural Vanilla",
                                         @"Tom" : @"Mexican Chocolate",
                                         @"Jim" : @"Natural Vanilla",
                                         @"Mark" : @"Cookies 'n Cream"};
    
    NSMutableArray *whoLikesFlavor = [[NSMutableArray alloc]init];
    for (NSString *key in flavorPreference){
    if ([flavorPreference[key] isEqualToString:iceCream]){
        NSString *person = key;
    [whoLikesFlavor addObject:person];}
    }
    
    return whoLikesFlavor;
}
-(NSDictionary*)countsOfIceCream:(NSDictionary *)iceCreamByName {
    NSMutableDictionary *flavorAndNumber = [[NSMutableDictionary alloc] init];
    for (NSString *key in iceCreamByName) {
        NSArray *peopleWhoLike = [self namesForIceCream:iceCreamByName[key]];
        NSUInteger number = [peopleWhoLike count];
        NSNumber *nsnum = @(number);
        flavorAndNumber[iceCreamByName[key]] = nsnum;
    }
    
    return flavorAndNumber;
    
}

@end
