//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    return YES;
}

-(NSArray *)namesForIceCream:(NSString *)iceCream {
    
    NSMutableArray *peopleWhoLikeFlavour = [[NSMutableArray alloc]init];
    
    NSDictionary *marksIceCreamNotes = @{ @"Joe"    :@"Peanut Butter and Chocolate" ,
                                          @"Tim"    :@"Natural Vanilla"             ,
                                          @"Sophie" :@"Mexican Chocolate"           ,
                                          @"Deniz"  :@"Natural Vanilla"             ,
                                          @"Tom"    :@"Mexican Chocolate"           ,
                                          @"Jim"    :@"Natural Vanilla"             ,
                                          @"Mark"   :@"Cookies 'n Cream"            };
    
    
    for (NSString *key in [marksIceCreamNotes allKeys]) {
        
        if ([marksIceCreamNotes[key] isEqualToString:iceCream]) {
            [peopleWhoLikeFlavour addObject:key];
        }
    }
    
    return peopleWhoLikeFlavour;
}

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName {
    
    
    NSMutableDictionary *numPeopleLikeFlavour = [NSMutableDictionary dictionary];
    
    
    for (NSString *key in iceCreamByName) {
        
        NSString *iceCream = iceCreamByName[key];
        
        NSArray *iceCreamNameArray = [self namesForIceCream:iceCream];
        
        numPeopleLikeFlavour[iceCream] = [NSNumber numberWithInteger:iceCreamNameArray.count];
        
        // NSInteger iceCreamNumber = [iceCreamNameArray count];
        
        // NSNumber *iceCreamCount = @(iceCreamNumber);
        
        // NSString *numberThatLike = [iceCreamCount stringValue];
        
        // numPeopleLikeFlavour[key] = iceCreamByName;
        
        // [numPeopleLikeFlavour setObject:numberThatLike forKey:iceCreamByName];
        
    }
    
    return numPeopleLikeFlavour;
}

@end
