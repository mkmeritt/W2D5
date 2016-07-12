//
//  PaintView.m
//  Finger Paint
//
//  Created by Mark Meritt on 2016-07-08.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "PaintView.h"

@implementation PaintView

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = touches.anyObject;
    CGPoint start = [touch previousLocationInView:self];
    CGPoint end = [touch locationInView:self];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
}

@end
