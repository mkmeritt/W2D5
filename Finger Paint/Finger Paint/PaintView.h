//
//  PaintView.h
//  Finger Paint
//
//  Created by Mark Meritt on 2016-07-08.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaintView : UIView

@property (nonatomic, assign) int startX;
@property (nonatomic, assign) int startY;

@property (nonatomic, assign) int endX;
@property (nonatomic, assign) int endY;

@property (nonatomic, strong) UIColor* colour;


-(void)drawRect:(CGRect)rect;

@end
