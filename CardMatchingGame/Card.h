//
//  Card.h
//  CardMatchingGame
//
//  Created by Jilian Scott on 4/26/14.
//  Copyright (c) 2014 Jilian Scott. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Card;

@protocol cardTouchedDelegate

-(void) cardTouched:(Card*)card;

@end
@interface Card : UIView


@property (strong, nonatomic) id <cardTouchedDelegate> delegate;





@end
