//
//  FISAppDelegate.h
//  objc-dictionary-ice-cream
//
//  Created by Mark Murray on 7/6/15.
//  Copyright (c) 2015 Mark Murray. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

//namesForIceCream: which takes an NSString argument iceCream and returns an NSArray object.

-(NSArray *)namesForIceCream:(NSString *)iceCream;
//countsOfIceCream: which takes an NSDictionary argument iceCreamByName and returns an NSDictionary object.
-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName;
@end

