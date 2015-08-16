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


-(NSArray *)namesForIceCream:(NSString *)iceCream{
    NSDictionary *iceCreamDict = @{@"Joe":@"Peanut Butter and Chocolate",
                                   @"Tim":@"Natural Vanilla",
                                   @"Sophie":@"Mexican Chocolate",
                                   @"Deniz":@"Natural Vanilla",
                                   @"Tom":@"Mexican Chocolate",
                                   @"Jim":@"Natural Vanilla",
                                   @"Mark":@"Cookies 'n Cream"};
    NSArray *array = [iceCreamDict allKeysForObject:iceCream];
    
  return array;};

-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{
    
    NSMutableDictionary *countsDict = [[NSMutableDictionary alloc]init];
    
    
    NSArray *pbc = [self namesForIceCream:@"Peanut Butter and Chocolate"];
    NSArray *nv = [self namesForIceCream:@"Natural Vanilla"];
    NSArray *mc = [self namesForIceCream:@"Mexican Chocolate"];
    NSArray *cnc = [self namesForIceCream:@"Cookies 'n Cream"];
    
    NSNumber *pbcCount = @([pbc count]);
    NSNumber *nvCount = @([nv count]);
    NSNumber *mcCount = @([mc count]);
    NSNumber *cncCount = @([cnc count]);
    
    countsDict[@"Peanut Butter and Chocolate"]=pbcCount;
    countsDict[@"Natural Vanilla"] = nvCount;
    countsDict[@"Mexican Chocolate"]=mcCount;
    countsDict[@"Cookies 'n Cream"]=cncCount;
    
    NSDictionary *iceCreamCounts = [countsDict copy];
    
    return iceCreamCounts;};


@end
