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

-(NSArray *) namesForIceCream:(NSString *)iceCream{
    NSDictionary * iceCreams =@{ @"Joe"    : @"Peanut Butter and Chocolate",
                                 @"Tim"    : @"Natural Vanilla"            ,
                                 @"Sophie" : @"Mexican Chocolate"          ,
                                 @"Deniz"  : @"Natural Vanilla"            ,
                                 @"Tom"    : @"Mexican Chocolate"          ,
                                 @"Jim"    : @"Natural Vanilla"            ,
                                 @"Mark"   : @"Cookies 'n Cream"          };
    
    NSMutableArray * arr = [[NSMutableArray alloc]init];
    
    for(NSString * key in iceCreams){
            [arr addObject:key];
            NSLog(@"*********************%@ %@ %@", key, iceCreams[key], iceCream);

    }
       return arr;
}

-(NSDictionary *) countsOfIceCream:(NSDictionary *)iceCreamByName{
    
    NSMutableDictionary * dic = [[NSMutableDictionary alloc] init];
    
    dic = @{ @"Peanut Butter and Chocolate" : @1     ,
                                   @"Natural Vanilla"             : @3     ,
                                   @"Mexican Chocolate"           : @2     ,
                                   @"Cookies 'n Cream"            : @1    };
    
    //[self namesForIceCream:iceCreamByName];
   /*NSInteger num;
    for (NSString * key in dic){
        num = [[self namesForIceCream:key] count];
        dic[key] = @1;
        //dic[key] = num;
        
    }*/
    NSLog(@"************** %@,", iceCreamByName);
    return dic;
}


/**
 
 * Write your custom method bodies here.
 
 */

@end
