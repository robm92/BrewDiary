//
//  CoffeeAnimation.m
//
//  Code generated using QuartzCode 1.36.2 on 27/08/2015.
//  www.quartzcodeapp.com
//

#import "CoffeeAnimation.h"
#import "QCMethod.h"

@interface CoffeeAnimation ()

@property (nonatomic, assign) BOOL  updateLayerValueForCompletedAnimation;
@property (nonatomic, assign) BOOL  animationAdded;
@property (nonatomic, strong) NSMapTable * completionBlocks;
@property (nonatomic, strong) NSMutableDictionary * layers;


@end

@implementation CoffeeAnimation

#pragma mark - Life Cycle

- (instancetype)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if (self) {
		[self setupProperties];
		[self setupLayers];
	}
	return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
	self = [super initWithCoder:coder];
	if (self) {
		[self setupProperties];
		[self setupLayers];
	}
	return self;
}

- (void)setCoffeeAnimProgress:(CGFloat)coffeeAnimProgress{
	if(!self.animationAdded){
		[self removeAllAnimations];
		[self addCoffeeAnimation];
		self.animationAdded = YES;
		self.layer.speed = 0;
		self.layer.timeOffset = 0;
	}
	else{
		double totalDuration = 2.41;
		double offset = coffeeAnimProgress * totalDuration;
		self.layer.timeOffset = offset;
	}
}

- (void)setFrame:(CGRect)frame{
	[super setFrame:frame];
	[self setupLayerFrames];
}

- (void)setBounds:(CGRect)bounds{
	[super setBounds:bounds];
	[self setupLayerFrames];
}

- (void)setupProperties{
	self.completionBlocks = [NSMapTable mapTableWithKeyOptions:NSPointerFunctionsOpaqueMemory valueOptions:NSPointerFunctionsStrongMemory];;
	self.layers = [NSMutableDictionary dictionary];
	self.color = [UIColor colorWithRed:0.604 green: 0.439 blue:0.337 alpha:1];
}

- (void)setupLayers{
	CALayer * water = [CALayer layer];
	[self.layer addSublayer:water];
	water.anchorPoint     = CGPointMake(0.5, 1);
	water.backgroundColor = [UIColor colorWithRed:0.604 green: 0.439 blue:0.337 alpha:1].CGColor;
	self.layers[@"water"] = water;
	CAShapeLayer * path = [CAShapeLayer layer];
	[water addSublayer:path];
	path.fillColor = self.color.CGColor;
	path.lineWidth = 0;
	self.layers[@"path"] = path;
	CAShapeLayer * path2 = [CAShapeLayer layer];
	[water addSublayer:path2];
	path2.hidden    = YES;
	path2.fillColor = [UIColor colorWithRed:0.6 green: 0.4 blue:0.2 alpha:1].CGColor;
	path2.lineWidth = 0;
	self.layers[@"path2"] = path2;
	CAShapeLayer * path3 = [CAShapeLayer layer];
	[water addSublayer:path3];
	path3.hidden    = YES;
	path3.fillColor = [UIColor colorWithRed:0.6 green: 0.4 blue:0.2 alpha:1].CGColor;
	path3.lineWidth = 0;
	self.layers[@"path3"] = path3;
	
	CAShapeLayer * rectangle = [CAShapeLayer layer];
	[self.layer addSublayer:rectangle];
	rectangle.hidden      = YES;
	rectangle.fillColor   = nil;
	rectangle.strokeColor = [UIColor colorWithRed:0.329 green: 0.329 blue:0.329 alpha:1].CGColor;
	rectangle.lineWidth   = 2;
	self.layers[@"rectangle"] = rectangle;
	[self setupLayerFrames];
}

- (void)setupLayerFrames{
	[CATransaction begin];
	[CATransaction setDisableActions:YES];
	
	CALayer * water          = self.layers[@"water"];
	water.frame              = CGRectMake(-0.00006 * CGRectGetWidth(water.superlayer.bounds), 0.99474 * CGRectGetHeight(water.superlayer.bounds), 1.00283 * CGRectGetWidth(water.superlayer.bounds), 0.00526 * CGRectGetHeight(water.superlayer.bounds));
	
	CAShapeLayer * path      = self.layers[@"path"];
	path.frame               = CGRectMake(0.00006 * CGRectGetWidth(path.superlayer.bounds), -37.13229 * CGRectGetHeight(path.superlayer.bounds), 1.01994 * CGRectGetWidth(path.superlayer.bounds), 38.21089 * CGRectGetHeight(path.superlayer.bounds));
	path.path                = [self pathPathWithBounds:[self.layers[@"path"] bounds]].CGPath;
	
	CAShapeLayer * path2     = self.layers[@"path2"];
	path2.frame              = CGRectMake(-0.64501 * CGRectGetWidth(path2.superlayer.bounds), 33.8544 * CGRectGetHeight(path2.superlayer.bounds), 1.00172 * CGRectGetWidth(path2.superlayer.bounds), 35.57003 * CGRectGetHeight(path2.superlayer.bounds));
	path2.path               = [self path2PathWithBounds:[self.layers[@"path2"] bounds]].CGPath;
	
	CAShapeLayer * path3     = self.layers[@"path3"];
	path3.frame              = CGRectMake(-0.53882 * CGRectGetWidth(path3.superlayer.bounds), 6.69454 * CGRectGetHeight(path3.superlayer.bounds), 1.00172 * CGRectGetWidth(path3.superlayer.bounds), 41.61322 * CGRectGetHeight(path3.superlayer.bounds));
	path3.path               = [self path3PathWithBounds:[self.layers[@"path3"] bounds]].CGPath;
	
	CAShapeLayer * rectangle = self.layers[@"rectangle"];
	rectangle.frame          = CGRectMake(0.00667 * CGRectGetWidth(rectangle.superlayer.bounds), 0.04737 * CGRectGetHeight(rectangle.superlayer.bounds), 1 * CGRectGetWidth(rectangle.superlayer.bounds), 0.94737 * CGRectGetHeight(rectangle.superlayer.bounds));
	rectangle.path           = [self rectanglePathWithBounds:[self.layers[@"rectangle"] bounds]].CGPath;
	
	[CATransaction commit];
}

#pragma mark - Animation Setup

- (void)addCoffeeAnimation{
	[self addCoffeeAnimationCompletionBlock:nil];
}

- (void)addCoffeeAnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
	if (completionBlock){
		CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
		completionAnim.duration = 2.63;
		completionAnim.delegate = self;
		[completionAnim setValue:@"Coffee" forKey:@"animId"];
		[completionAnim setValue:@(NO) forKey:@"needEndAnim"];
		[self.layer addAnimation:completionAnim forKey:@"Coffee"];
		[self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"Coffee"]];
	}
	
	NSString * fillMode = kCAFillModeForwards;
	
	CALayer * water = self.layers[@"water"];
	
	////Water animation
	CABasicAnimation * waterBoundsAnim = [CABasicAnimation animationWithKeyPath:@"bounds"];
	waterBoundsAnim.fromValue          = [NSValue valueWithCGRect:CGRectMake(0, 0, 1.00283 * CGRectGetWidth(water.superlayer.bounds), 0.00526 * CGRectGetHeight(water.superlayer.bounds))];
	waterBoundsAnim.toValue            = [NSValue valueWithCGRect:CGRectMake(0, 0, 1.0027 * CGRectGetWidth(water.superlayer.bounds), 1.01579 * CGRectGetHeight(water.superlayer.bounds))];
	waterBoundsAnim.duration           = 2.06;
	
	CAAnimationGroup * waterCoffeeAnim = [QCMethod groupAnimations:@[waterBoundsAnim] fillMode:fillMode];
	[self.layers[@"water"] addAnimation:waterCoffeeAnim forKey:@"waterCoffeeAnim"];
	
	////Path animation
	CAKeyframeAnimation * pathPathAnim = [CAKeyframeAnimation animationWithKeyPath:@"path"];
	pathPathAnim.values                = @[(id)[QCMethod alignToBottomPath:[self pathPathWithBounds:[self.layers[@"path"] bounds]] layer:self.layers[@"path"]].CGPath, (id)[QCMethod alignToBottomPath:[self path2PathWithBounds:[self.layers[@"path2"] bounds]] layer:self.layers[@"path"]].CGPath, (id)[QCMethod alignToBottomPath:[self path3PathWithBounds:[self.layers[@"path3"] bounds]] layer:self.layers[@"path"]].CGPath];
	pathPathAnim.keyTimes              = @[@0, @0.486, @1];
	pathPathAnim.duration              = 0.438;
	pathPathAnim.repeatCount           = 3;
	pathPathAnim.autoreverses          = YES;
	
	CAShapeLayer * path = self.layers[@"path"];
	
	CAKeyframeAnimation * pathTransformAnim = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
	pathTransformAnim.values       = @[[NSValue valueWithCATransform3D:CATransform3DIdentity], 
		 [NSValue valueWithCATransform3D:CATransform3DConcat(CATransform3DMakeTranslation(0.013296 * CGRectGetWidth(path.superlayer.bounds), 12.001 * CGRectGetHeight(path.superlayer.bounds), 0), CATransform3DMakeRotation(9 * M_PI/180, 0, -0, 1))], 
		 [NSValue valueWithCATransform3D:CATransform3DConcat(CATransform3DMakeTranslation(-0.019944 * CGRectGetWidth(path.superlayer.bounds), 14.001 * CGRectGetHeight(path.superlayer.bounds), 0), CATransform3DMakeRotation(-7 * M_PI/180, -0, 0, 1))]];
	pathTransformAnim.keyTimes     = @[@0, @0.478, @1];
	pathTransformAnim.duration     = 0.788;
	pathTransformAnim.beginTime    = 0.43;
	pathTransformAnim.autoreverses = YES;
	
	CAAnimationGroup * pathCoffeeAnim = [QCMethod groupAnimations:@[pathPathAnim, pathTransformAnim] fillMode:fillMode];
	[self.layers[@"path"] addAnimation:pathCoffeeAnim forKey:@"pathCoffeeAnim"];
}

#pragma mark - Animation Cleanup

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
	void (^completionBlock)(BOOL) = [self.completionBlocks objectForKey:anim];;
	if (completionBlock){
		[self.completionBlocks removeObjectForKey:anim];
		if ((flag && self.updateLayerValueForCompletedAnimation) || [[anim valueForKey:@"needEndAnim"] boolValue]){
			[self updateLayerValuesForAnimationId:[anim valueForKey:@"animId"]];
			[self removeAnimationsForAnimationId:[anim valueForKey:@"animId"]];
		}
		completionBlock(flag);
	}
}

- (void)updateLayerValuesForAnimationId:(NSString *)identifier{
	if([identifier isEqualToString:@"Coffee"]){
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"water"] animationForKey:@"waterCoffeeAnim"] theLayer:self.layers[@"water"]];
		[QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"path"] animationForKey:@"pathCoffeeAnim"] theLayer:self.layers[@"path"]];
	}
}

- (void)removeAnimationsForAnimationId:(NSString *)identifier{
	if([identifier isEqualToString:@"Coffee"]){
		[self.layers[@"water"] removeAnimationForKey:@"waterCoffeeAnim"];
		[self.layers[@"path"] removeAnimationForKey:@"pathCoffeeAnim"];
	}
	self.layer.speed = 1;
}

- (void)removeAllAnimations{
	[self.layers enumerateKeysAndObjectsUsingBlock:^(id key, CALayer *layer, BOOL *stop) {
		[layer removeAllAnimations];
	}];
	self.layer.speed = 1;
}

#pragma mark - Bezier Path

- (UIBezierPath*)pathPathWithBounds:(CGRect)bound{
	UIBezierPath *pathPath = [UIBezierPath bezierPath];
	CGFloat minX = CGRectGetMinX(bound), minY = CGRectGetMinY(bound), w = CGRectGetWidth(bound), h = CGRectGetHeight(bound);
	
	[pathPath moveToPoint:CGPointMake(minX + 0.00426 * w, minY + 0.98488 * h)];
	[pathPath addCurveToPoint:CGPointMake(minX + 0.03897 * w, minY + 0.13955 * h) controlPoint1:CGPointMake(minX + -0.01045 * w, minY + 0.64635 * h) controlPoint2:CGPointMake(minX + 0.01581 * w, minY + 0.17543 * h)];
	[pathPath addCurveToPoint:CGPointMake(minX + 0.26608 * w, minY + 0.13955 * h) controlPoint1:CGPointMake(minX + 0.06213 * w, minY + 0.10368 * h) controlPoint2:CGPointMake(minX + 0.12354 * w, minY + -0.15567 * h)];
	[pathPath addCurveToPoint:CGPointMake(minX + 0.4956 * w, minY + 0.10366 * h) controlPoint1:CGPointMake(minX + 0.42379 * w, minY + 0.46618 * h) controlPoint2:CGPointMake(minX + 0.25205 * w, minY + 0.34101 * h)];
	[pathPath addCurveToPoint:CGPointMake(minX + 0.75776 * w, minY + 0.13181 * h) controlPoint1:CGPointMake(minX + 0.73915 * w, minY + -0.13369 * h) controlPoint2:CGPointMake(minX + 0.68483 * w, minY + 0.44726 * h)];
	[pathPath addCurveToPoint:CGPointMake(minX + 0.94782 * w, minY + 0.46377 * h) controlPoint1:CGPointMake(minX + 0.79446 * w, minY + -0.02692 * h) controlPoint2:CGPointMake(minX + 0.88347 * w, minY + 0.00552 * h)];
	[pathPath addCurveToPoint:CGPointMake(minX + w, minY + h) controlPoint1:CGPointMake(minX + 0.99835 * w, minY + 0.82364 * h) controlPoint2:CGPointMake(minX + 0.99482 * w, minY + -0.08546 * h)];
	
	return pathPath;
}

- (UIBezierPath*)path2PathWithBounds:(CGRect)bound{
	UIBezierPath *path2Path = [UIBezierPath bezierPath];
	CGFloat minX = CGRectGetMinX(bound), minY = CGRectGetMinY(bound), w = CGRectGetWidth(bound), h = CGRectGetHeight(bound);
	
	[path2Path moveToPoint:CGPointMake(minX + 0.0088 * w, minY + 0.98365 * h)];
	[path2Path addCurveToPoint:CGPointMake(minX + 0.02149 * w, minY + 0.07567 * h) controlPoint1:CGPointMake(minX + -0.00618 * w, minY + 0.61998 * h) controlPoint2:CGPointMake(minX + -0.00209 * w, minY + 0.11421 * h)];
	[path2Path addCurveToPoint:CGPointMake(minX + 0.25274 * w, minY + 0.07567 * h) controlPoint1:CGPointMake(minX + 0.04508 * w, minY + 0.03713 * h) controlPoint2:CGPointMake(minX + 0.11007 * w, minY + 0.35709 * h)];
	[path2Path addCurveToPoint:CGPointMake(minX + 0.51837 * w, minY + 0.15221 * h) controlPoint1:CGPointMake(minX + 0.3954 * w, minY + -0.20574 * h) controlPoint2:CGPointMake(minX + 0.27039 * w, minY + 0.40718 * h)];
	[path2Path addCurveToPoint:CGPointMake(minX + 0.75538 * w, minY + 0.07567 * h) controlPoint1:CGPointMake(minX + 0.76635 * w, minY + -0.10276 * h) controlPoint2:CGPointMake(minX + 0.58406 * w, minY + 0.27902 * h)];
	[path2Path addCurveToPoint:CGPointMake(minX + 0.92723 * w, minY + 0.15221 * h) controlPoint1:CGPointMake(minX + 0.80826 * w, minY + 0.0129 * h) controlPoint2:CGPointMake(minX + 0.79998 * w, minY + 0.32178 * h)];
	[path2Path addCurveToPoint:CGPointMake(minX + w, minY + h) controlPoint1:CGPointMake(minX + 0.98487 * w, minY + 0.07541 * h) controlPoint2:CGPointMake(minX + 0.99473 * w, minY + -0.16605 * h)];
	
	return path2Path;
}

- (UIBezierPath*)path3PathWithBounds:(CGRect)bound{
	UIBezierPath *path3Path = [UIBezierPath bezierPath];
	CGFloat minX = CGRectGetMinX(bound), minY = CGRectGetMinY(bound), w = CGRectGetWidth(bound), h = CGRectGetHeight(bound);
	
	[path3Path moveToPoint:CGPointMake(minX + 0.0088 * w, minY + 0.98602 * h)];
	[path3Path addCurveToPoint:CGPointMake(minX + 0.02149 * w, minY + 0.20991 * h) controlPoint1:CGPointMake(minX + -0.00618 * w, minY + 0.67517 * h) controlPoint2:CGPointMake(minX + -0.00209 * w, minY + 0.24285 * h)];
	[path3Path addCurveToPoint:CGPointMake(minX + 0.2628 * w, minY + 0.39086 * h) controlPoint1:CGPointMake(minX + 0.04508 * w, minY + 0.17696 * h) controlPoint2:CGPointMake(minX + 0.12013 * w, minY + 0.6314 * h)];
	[path3Path addCurveToPoint:CGPointMake(minX + 0.54547 * w, minY + 0.39086 * h) controlPoint1:CGPointMake(minX + 0.40546 * w, minY + 0.15031 * h) controlPoint2:CGPointMake(minX + 0.29749 * w, minY + 0.6088 * h)];
	[path3Path addCurveToPoint:CGPointMake(minX + 0.80852 * w, minY + 0.07575 * h) controlPoint1:CGPointMake(minX + 0.79345 * w, minY + 0.17291 * h) controlPoint2:CGPointMake(minX + 0.6372 * w, minY + 0.24957 * h)];
	[path3Path addCurveToPoint:CGPointMake(minX + 0.94199 * w, minY + 0.01943 * h) controlPoint1:CGPointMake(minX + 0.86141 * w, minY + 0.0221 * h) controlPoint2:CGPointMake(minX + 0.81474 * w, minY + 0.16437 * h)];
	[path3Path addCurveToPoint:CGPointMake(minX + w, minY + h) controlPoint1:CGPointMake(minX + 0.99963 * w, minY + -0.04622 * h) controlPoint2:CGPointMake(minX + 0.99473 * w, minY + 0.00329 * h)];
	
	return path3Path;
}

- (UIBezierPath*)rectanglePathWithBounds:(CGRect)bound{
	UIBezierPath * rectanglePath = [UIBezierPath bezierPathWithRect:bound];
	return rectanglePath;
}


@end