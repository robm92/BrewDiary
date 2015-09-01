//
//  BrewMethod.h
//  BrewDiary
//
//  Created by Rob McMorran on 17/08/2015.
//  Copyright © 2015 Rob McMorran. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BrewMethod : NSObject

@property (nonatomic,strong) NSString * name;
@property (nonatomic,assign) NSInteger brewMethodId;



- (id) initWithName: (NSInteger) brewMethodId_ name:(NSString *) name_;


@end
