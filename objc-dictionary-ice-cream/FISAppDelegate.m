//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    NSArray *testingIceCream = [self namesForIceCream:@"Natural Vanilla"];
    NSLog(@"%@",testingIceCream);
    
    NSDictionary *testingTheCounts = @{ @"Joe"    : @"Peanut Butter and Chocolate",
                                        @"Tim"    : @"Natural Vanilla",
                                        @"Sophie" : @"Mexican Chocolate",
                                        @"Deniz"  : @"Natural Vanilla",
                                        @"Tom"    : @"Mexican Chocolate",
                                        @"Jim"    : @"Natural Vanilla",
                                        @"Mark"   : @"Cookies 'n Cream",
                                        };

    NSDictionary *resultsCount = [self countsOfIceCream:testingTheCounts];
    NSLog(@"%@",resultsCount);
    
    
    return YES;
}

- (NSArray *)namesForIceCream: (NSString *)iceCream{
    NSDictionary *preferredFlavors = @{ @"Joe"    : @"Peanut Butter and Chocolate",
                                        @"Tim"    : @"Natural Vanilla",
                                        @"Sophie" : @"Mexican Chocolate",
                                        @"Deniz"  : @"Natural Vanilla",
                                        @"Tom"    : @"Mexican Chocolate",
                                        @"Jim"    : @"Natural Vanilla",
                                        @"Mark"   : @"Cookies 'n Cream",
                                        };
    NSArray *namesThatLike = [preferredFlavors allKeysForObject:iceCream];
    NSLog(@"%@",namesThatLike);
    return namesThatLike;
}


- (NSDictionary *)countsOfIceCream: (NSDictionary *)iceCreamByName {
    NSMutableDictionary *mutableIceCreamByName = [[NSMutableDictionary alloc] init];
    //NSString *testingThis =
    for (NSString *iceValue in [iceCreamByName allValues]) {

        if (1==1) {
            NSUInteger unsignedFlavorCount = [self namesForIceCream:iceValue].count;
            NSNumber *flavorCount = @(unsignedFlavorCount);
            mutableIceCreamByName[@"%@",iceValue] = flavorCount;
        }
    }
    
    NSLog(@"%@", mutableIceCreamByName);
    NSDictionary *theResult = [NSDictionary dictionaryWithDictionary:mutableIceCreamByName];
    
    return theResult;
}


@end
