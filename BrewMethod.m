//
//  BrewMethod.m
//  BrewDiary
//
//  Created by Rob McMorran on 17/08/2015.
//  Copyright © 2015 Rob McMorran. All rights reserved.
//

#import "BrewMethod.h"

@implementation BrewMethod

@synthesize name,brewMethodId;


- (id) initWithName:(NSInteger) brewMethodId_ name:(NSString *) name_;
{
    self = [super init];
    if (self)
    {
        brewMethodId = brewMethodId_;
        name = name_;
    }
    return self;
}

@end
