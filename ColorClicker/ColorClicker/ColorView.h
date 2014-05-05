//
//  ColorView.h
//  ColorClicker
//
//  Created by Jackie Scott on 4/30/14.
//  Copyright (c) 2014 Jilian Scott. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ViewTouchedDelegate

-(void) passViewTag:(NSInteger)viewTag;

@end

@interface ColorView : UIView


@property (strong, nonatomic) id <ViewTouchedDelegate> delegate;


@end
