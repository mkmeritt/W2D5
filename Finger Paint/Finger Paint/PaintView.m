//
//  PaintView.m
//  Finger Paint
//
//  Created by Mark Meritt on 2016-07-08.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "PaintView.h"

@implementation PaintView

UIBezierPath *path;

-(instancetype)init{
    
    if(self = [super init]){
        [self setBackgroundColor:[UIColor blackColor]];
        [self setFrame:CGRectMake(0, 0, 500, 600)];
        _colour = [UIColor blueColor];
    }
    
    return self;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = touches.anyObject;
    CGPoint start = [touch locationInView:self];
    
    NSLog(@"Started at : %f %f", start.x, start.y);
    
    _startX = (int)start.x;
    _startY = (int)start.y;
    
     path = [[UIBezierPath alloc] init];
    [path moveToPoint:CGPointMake(_startX, _startY)];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch *touch = touches.anyObject;
    CGPoint end = [touch locationInView:self];
    
    NSLog(@"Ended at : %f %f", end.x, end.y);
    
    _endX = (int)end.x;
    _endY = (int)end.y;
    
    [path addLineToPoint:CGPointMake(_endX, _endY)];
    
    [self drawRect:CGRectMake(_startX, _startY, _endX, _endY)];
    [self setNeedsDisplay];
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

  
}

-(void)drawRect:(CGRect)rect{
    [path closePath];
    
    path.lineWidth = 10;
    
    [_colour set];
    
    [path stroke];
}

@end
