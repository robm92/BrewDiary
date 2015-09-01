//
//  Brew.m
//  BrewDiary
//
//  Created by Rob McMorran on 17/08/2015.
//  Copyright © 2015 Rob McMorran. All rights reserved.
//

#import "Brew.h"

@implementation Brew

@synthesize coffeeId,brewMethodId,brewId,brewTime,steepTime,flavour,temperature,date,rating,notes;


- (id) initWithName: (NSInteger) brewId_ coffeeId:(NSInteger) coffeeId_ brewMethodId:(NSInteger) brewMethodId_
               date:(NSDate *) date_ temperature:(double) temperature_ steepTime:(double) steepTime_
           brewTime:(double) brewTime_ rating:(NSInteger) rating_ flavour:(NSString *) flavour_
              notes:(NSString *) notes_;
{
    self = [super init];
    if (self)
    {
        brewId = brewId_;
        coffeeId = coffeeId_;
        brewMethodId = brewMethodId_;
        date = date_;
        temperature = temperature_;
        steepTime = steepTime_;
        brewTime = brewTime_;
        rating = rating_;
        flavour = flavour_;
        notes = notes_;
    }
    return self;
}




@end
