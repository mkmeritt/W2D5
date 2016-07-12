//
//  ViewController.m
//  Finger Paint
//
//  Created by Mark Meritt on 2016-07-08.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _paintView = [[PaintView alloc] init];
    
    [self.view addSubview:_paintView];
    
    if([_paintView isDescendantOfView:self.view]) {
        NSLog(@"Paint View");
    }
    
    UITapGestureRecognizer *tapGesture1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)];
    
    [_greenPalette addGestureRecognizer:tapGesture1];
    
      UITapGestureRecognizer *tapGesture2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)];
    
    [_yellowPalette addGestureRecognizer:tapGesture2];
    
      UITapGestureRecognizer *tapGesture3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTapGesture:)];
    
    [_bluePalette addGestureRecognizer:tapGesture3];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)handleTapGesture:(UITapGestureRecognizer *)sender{
    
    UIView* view = sender.view;

            [_paintView setColour:view.backgroundColor];
    
        
    
     
}



@end
