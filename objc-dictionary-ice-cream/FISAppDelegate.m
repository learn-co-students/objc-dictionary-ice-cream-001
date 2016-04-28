//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSDictionary *)iceCreamByName {
    NSDictionary *iceCreamByName = @{ @"Joe"    : @"Peanut Butter and Chocolate",
                                      @"Tim"    : @"Natural Vanilla"            ,
                                      @"Sophie" : @"Mexican Chocolate"          ,
                                      @"Deniz"  : @"Natural Vanilla"            ,
                                      @"Tom"    : @"Mexican Chocolate"          ,
                                      @"Jim"    : @"Natural Vanilla"            ,
                                      @"Mark"   : @"Cookies 'n Cream"          };
    return iceCreamByName;
}

-(NSArray *)namesForIceCream:(NSString *)icecream {
    NSMutableArray *result = [[NSMutableArray alloc] init];
    
    for(NSString *key in [self iceCreamByName]) {
        if ([[self iceCreamByName][key] isEqualToString:icecream]) {
            [result addObject:key];
        }
    }
    return result;
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    NSMutableDictionary *result = [[NSMutableDictionary alloc] init];
    for(NSString *key in [self iceCreamByName]) {
        NSString *iceCream = [self iceCreamByName][key];
        if ([[result allKeys] containsObject:iceCream]) {
            NSUInteger curVal = [result[iceCream] integerValue];
            curVal++;
            result[iceCream] = @(curVal);
        } else {
            result[iceCream] = @1;
        }
    }
    return result;
}

@end
