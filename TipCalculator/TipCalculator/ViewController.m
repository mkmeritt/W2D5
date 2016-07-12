//
//  ViewController.m
//  TipCalculator
//
//  Created by Mark Meritt on 2016-07-11.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)calculatePercentage:(id)sender {
    _percentage = _tipPercentage.text;
}

- (IBAction)calculateTipBtnPressed:(id)sender {
    
    _tipLbl.text = [NSString stringWithFormat:@"Tip Should Be: %d",   [self calculateTip:_tipAmount]];
    
}

-(int)calculateTip:(NSString *)amountEntered{
    int tip = [amountEntered intValue];
    
    float percentageTip = [_percentage floatValue];
    
    percentageTip = percentageTip / 100;
    
    tip = tip * percentageTip;
    
    return tip;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:true];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [_billAmountTextField resignFirstResponder];
    [_tipPercentage resignFirstResponder];
    _tipAmount = _billAmountTextField.text;
    _percentage = _tipPercentage.text;
    return true;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
