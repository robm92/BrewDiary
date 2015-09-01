//
//  Coffee.h
//  BrewDiary
//
//  Created by Rob McMorran on 17/08/2015.
//  Copyright © 2015 Rob McMorran. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Coffee : NSObject

@property (nonatomic,strong) NSString * name;
@property (nonatomic,strong) NSString * region;
@property (nonatomic,strong) NSString * roast;
@property (nonatomic,strong) NSString * flavour;
@property (nonatomic,strong) NSString * roaster;
@property (nonatomic,assign) NSInteger coffeeId;



- (id) initWithName: (NSInteger) coffeeId_ name:(NSString *) name_ region:(NSString *) region_
            roast:(NSString *) roast_ flavour:(NSString *) flavour_
            roaster:(NSString *) roaster_ ;

@end
