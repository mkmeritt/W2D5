//
//  ViewController.h
//  Finger Paint
//
//  Created by Mark Meritt on 2016-07-08.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PaintView.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *greenPalette;
@property (weak, nonatomic) IBOutlet UIView *bluePalette;
@property (weak, nonatomic) IBOutlet UIView *yellowPalette;


@property (nonatomic) PaintView* paintView;


-(void)handleTapGesture:(UITapGestureRecognizer*)sender;


@end

