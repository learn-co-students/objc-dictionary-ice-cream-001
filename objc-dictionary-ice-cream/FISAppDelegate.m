//
//  FISAppDelegate.m
//  objc-dictionary-ice-cream
//
//  Created by Mark Murray on 7/6/15.
//  Copyright (c) 2015 Mark Murray. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your custom method bodies here.
 
 */


- (NSArray *)namesForIceCream: (NSString *)iceCream {
    NSDictionary * iceCreamPreference =  @{ @"Joe"    :@"Peanut Butter and Chocolate",
                                            @"Tim"    :@"Natural Vanilla"            ,
                                            @"Sophie" :@"Mexican Chocolate"          ,
                                            @"Deniz"  :@"Natural Vanilla"            ,
                                            @"Tom"    :@"Mexican Chocolate"          ,
                                            @"Jim"    :@"Natural Vanilla"            ,
                                            @"Mark"   :@"Cookies 'n Cream"          };

   
    NSMutableArray * final = [[NSMutableArray alloc]init];
    for (NSString *key in iceCreamPreference) {
        NSString *test = iceCreamPreference[key];
        if ([iceCream isEqualToString:test]) {
            [final addObject:key];
        }
    }
    return final;

}

- (NSDictionary *)countsOfIceCream: (NSDictionary *)iceCreamName {
    NSMutableDictionary *final = [[NSMutableDictionary alloc]init];
    for (NSString *key in iceCreamName) {
        NSString *iceCream = iceCreamName[key];
        NSInteger iceCreamCount = [[self namesForIceCream:iceCream]count];
        NSNumber *nIceCreamCount = @(iceCreamCount);
        if (![[final allKeys] containsObject:iceCream]) {
            [final setObject:nIceCreamCount forKey:iceCream];
        }
    }
    
    return final;
}

@end

                  
