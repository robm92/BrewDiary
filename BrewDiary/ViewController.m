//
//  ViewController.m
//  BrewDiary
//
//  Created by Rob McMorran on 17/08/2015.
//  Copyright © 2015 Rob McMorran. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"
#import "UIColor+Hex.h"
#import "CoffeeAnimation.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic, strong) NSArray *dataArray;
@property (weak, nonatomic) IBOutlet CoffeeAnimation *CoffeeAnimation;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _dataArray = [NSArray arrayWithObjects:
                  [NSDictionary dictionaryWithObjectsAndKeys:
                   @"Aeropress",@"name",
                   @"Aeropress.png",@"image",
                   nil],
                  [NSDictionary dictionaryWithObjectsAndKeys:
                   @"Chemex",@"name",
                   @"Chemex.png",@"image",
                   nil],
                  [NSDictionary dictionaryWithObjectsAndKeys:
                   @"French Press",@"name",
                   @"French#.png",@"image",
                   nil],
                  [NSDictionary dictionaryWithObjectsAndKeys:
                   @"Pour over",@"name",
                   @"Pour_Over.png",@"image",
                   nil],
                  [NSDictionary dictionaryWithObjectsAndKeys:
                   @"Siphon",@"name",
                   @"siphon.png",@"image",
                   nil],
                  nil];
    
    UINib *cellNib = [UINib nibWithNibName:@"CollectionView" bundle:nil];
    [self.collectionView registerNib:cellNib forCellWithReuseIdentifier:@"cvCell"];
    //[self.collectionView setBackgroundColor:[UIColor colorWithHex:0xECF0F1]];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    [self.collectionView setCollectionViewLayout:flowLayout];
    
    self.CoffeeAnimation.addCoffeeAnimation;
    
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;//[self.dataArray count];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [_dataArray count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    long row = [indexPath row];
    NSDictionary *cells = [self.dataArray objectAtIndex:row];
    
    static NSString *cellIdentifier = @"cvCell";
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    [cell.lblName setText:[cells objectForKey:@"name"]];
    [cell.imgThumbnail setImage:[UIImage imageNamed:[cells objectForKey:@"image"]]];
    //[cell setBackgroundColor:[UIColor colorWithHex:0xFFA631]];
    
    return cell;
    
}

#pragma mark Collection view layout things
// Layout: Set cell size
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"SETTING SIZE FOR ITEM AT INDEX %ld", (long)indexPath.row);
    CGSize mElementSize = CGSizeMake(128,152);
    //CGRectGetWidth(self.view.bounds)/4, CGRectGetHeight(self.view.bounds)/4
    return mElementSize;
}
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return 2;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return 2;
}

// Layout: Set Edges
- (UIEdgeInsets)collectionView:
(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(0,2,0,2);  // top, left, bottom, right
}


@end
