//
//  ColorView.m
//  ColorClicker
//
//  Created by Jackie Scott on 4/30/14.
//  Copyright (c) 2014 Jilian Scott. All rights reserved.
//

#import "ColorView.h"

@implementation ColorView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_delegate passViewTag:self.tag];
}

@end
