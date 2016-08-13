//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSArray *) namesForIceCream: (NSString *)iceCream {
    NSDictionary *iceCreamDictionary = @{@"Joe":@"Peanut Butter and Chocolate", @"Tim":@"Natural Vanilla", @"Sophie":@"Mexican Chocolate", @"Deniz":@"Natural Vanilla", @"Tom":@"Mexican Chocolate", @"Jim":@"Natural Vanilla", @"Mark":@"Cookies 'n Cream" };
    
    NSMutableArray *names = [[NSMutableArray alloc] init];
    for (NSString *key in [iceCreamDictionary allKeys]) {
        if ([iceCreamDictionary[key] isEqualToString:iceCream]) {
            [names addObject:key];
        }
    }
    NSArray *listOfNames = [names mutableCopy];
    return listOfNames;
}

- (NSDictionary *) countsOfIceCream: (NSDictionary *)iceCreamByName {
    
    NSMutableDictionary *mdict = [[NSMutableDictionary alloc] init];
    for (NSString *value in [iceCreamByName allValues]) {
        NSArray *array =[self namesForIceCream:value];
        NSInteger num = [array count];
        NSNumber *myNum = @(num);
        
        [mdict setObject:myNum forKey:value];
    
    }
    NSDictionary *newdict = [mdict mutableCopy];
    return newdict;
    
    

    
    
}


@end
