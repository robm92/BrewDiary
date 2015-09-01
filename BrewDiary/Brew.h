//
//  Brew.h
//  BrewDiary
//
//  Created by Rob McMorran on 17/08/2015.
//  Copyright © 2015 Rob McMorran. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Brew : NSObject

@property (nonatomic,assign) NSInteger brewId;
@property (nonatomic,assign) NSInteger coffeeId;
@property (nonatomic,assign) NSInteger brewMethodId;
@property (nonatomic,strong) NSDate * date;
@property (nonatomic,assign) double temperature;
@property (nonatomic,assign) double steepTime;
@property (nonatomic,assign) double brewTime;
@property (nonatomic,assign) NSInteger rating;
@property (nonatomic,strong) NSString * flavour;
@property (nonatomic,strong) NSString * notes;

- (id) initWithName: (NSInteger) brewId_ coffeeId:(NSInteger) coffeeId_ brewMethodId:(NSInteger) brewMethodId_
               date:(NSDate *) date_ temperature:(double) temperature_ steepTime:(double) steepTime
            brewTime:(double) brewTime_ rating:(NSInteger) rating_ flavour:(NSString *) flavour_
                notes:(NSString *) notes_;




@end
