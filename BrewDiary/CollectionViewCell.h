//
//  CollectionViewCell.h
//  BrewDiary
//
//  Created by Rob McMorran on 17/08/2015.
//  Copyright © 2015 Rob McMorran. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imgThumbnail;
@property (weak, nonatomic) IBOutlet UILabel *lblName;

@end
