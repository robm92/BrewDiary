//
//  Coffee.m
//  BrewDiary
//
//  Created by Rob McMorran on 17/08/2015.
//  Copyright © 2015 Rob McMorran. All rights reserved.
//

#import "Coffee.h"

@implementation Coffee

@synthesize name,region,roast,roaster,flavour,coffeeId;


- (id) initWithName:(NSInteger) coffeeId_ name:(NSString *) name_ region:(NSString *) region_
              roast:(NSString *) roast_ flavour:(NSString *) flavour_
            roaster:(NSString *) roaster_ ;
{
    self = [super init];
    if (self)
    {
        coffeeId = coffeeId_;
        name = name_;
        region = region_;
        roast = roast_;
        flavour = flavour_;
        roaster = roaster_;
    }
    return self;
}

@end
