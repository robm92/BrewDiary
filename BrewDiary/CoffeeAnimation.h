//
//  CoffeeAnimation.h
//
//  Code generated using QuartzCode 1.36.2 on 27/08/2015.
//  www.quartzcodeapp.com
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface CoffeeAnimation : UIView

@property (nonatomic, strong) UIColor * color;
@property (nonatomic, assign) CGFloat  CoffeeAnimProgress;

- (void)addCoffeeAnimation;
- (void)addCoffeeAnimationCompletionBlock:(void (^)(BOOL finished))completionBlock;
- (void)removeAnimationsForAnimationId:(NSString *)identifier;
- (void)removeAllAnimations;

@end
