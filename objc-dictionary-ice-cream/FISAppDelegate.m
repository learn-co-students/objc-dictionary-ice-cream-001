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

-(NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSDictionary *iceCreamDictionary = @{
        @"Joe" : @"Peanut Butter and Chocolate",
        @"Tim" : @"Natural Vanilla",
        @"Sophie" : @"Mexican Chocolate",
        @"Deniz" : @"Natural Vanilla",
        @"Tom" : @"Mexican Chocolate",
        @"Jim" : @"Natural Vanilla",
        @"Mark" : @"Cookies 'n Cream"
    };
    
    NSMutableArray *namesWhoLikeFlavor = [[NSMutableArray alloc] init];
    
    for (NSString *key in iceCreamDictionary) {
        
        NSString *flavor = iceCreamDictionary[key];
        
        if ([flavor isEqualToString:iceCream]) {
            NSString *name = key;
            [namesWhoLikeFlavor addObject:name];
            
        }
        
    }
    
    NSArray *allNamesWhoLikeFlavor = [namesWhoLikeFlavor copy];
    
    return allNamesWhoLikeFlavor;
}


-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    NSArray *collectFlavors = [iceCreamByName allValues];
    NSSet *setOfFlavors = [NSSet setWithArray:collectFlavors];
    NSArray *arrayWithoutDuplicateFlavors = [setOfFlavors allObjects];
    NSMutableDictionary *initialCount = [[NSMutableDictionary alloc] init];
    
    for (NSString *flavor in arrayWithoutDuplicateFlavors) {
        
        NSArray *namesPulled = [self namesForIceCream:flavor];
        NSInteger numberOfNames = [namesPulled count];
        NSNumber *convertNumberOfNames = [NSNumber numberWithInteger:numberOfNames];
        [initialCount setObject:convertNumberOfNames forKey:flavor];
        
    }
    
    NSDictionary *finalCountOfIceCream = [initialCount copy];
    
    return finalCountOfIceCream;

}


@end
