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

-(NSArray *)namesForIceCream:(NSString *)iceCream{
    NSDictionary *iceCreamByName = @{
                        @"Joe"    : @"Peanut Butter and Chocolate",
                        @"Tim"    : @"Natural Vanilla"            ,
                        @"Sophie" : @"Mexican Chocolate"          ,
                        @"Deniz"  : @"Natural Vanilla"            ,
                        @"Tom"    : @"Mexican Chocolate"          ,
                        @"Jim"    : @"Natural Vanilla"            ,
                        @"Mark"   : @"Cookies 'n Cream"          };
    
    NSMutableArray *flavor= [[NSMutableArray alloc] init];
    for (NSString *key in iceCreamByName){
        if ([iceCreamByName[key] isEqualToString:iceCream]){
            [flavor addObject:key];
        }
    }
    NSArray *flavorFolk = [flavor copy];
    return flavorFolk;
    
}
//countsOfIceCream: which takes an NSDictionary argument iceCreamByName and returns an NSDictionary object.
-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{
    
    NSArray *pbChocolate =  [self namesForIceCream:@"Peanut Butter and Chocolate"];
    NSArray *naturalVanilla =  [self namesForIceCream:@"Natural Vanilla"];
    NSArray *mexicanChocolate =[self namesForIceCream:@"Mexican Chocolate"];
    NSArray *cookies = [self namesForIceCream:@"Cookies 'n Cream"];
    
    NSMutableDictionary *mCounts = [[NSMutableDictionary alloc] init];
    NSNumber *pb = @([pbChocolate count]);
    mCounts[@"Peanut Butter and Chocolate"] = pb;
    
    NSNumber *vanilla = @([naturalVanilla count]);
    mCounts[@"Natural Vanilla"] = vanilla;
    
    NSNumber *chocolate = @([mexicanChocolate count]);
    mCounts[@"Mexican Chocolate"] = chocolate;
    
    NSNumber *cc = @([cookies count]);
    mCounts[@"Cookies 'n Cream"] = cc;
    
    NSDictionary *counts = [mCounts copy];

    return counts;
    
    
    
}

@end
