//
//  ViewController.h
//  TipCalculator
//
//  Created by Mark Meritt on 2016-07-11.
//  Copyright © 2016 Apptist. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *tipLbl;
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (nonatomic) NSString* tipAmount;
@property (nonatomic) NSString* percentage;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentage;

-(int)calculateTip:(NSString*)amountEntered;

@end

