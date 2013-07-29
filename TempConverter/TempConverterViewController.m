//
//  TempConverterViewController.m
//  TempConverter
//
//  Created by Qian  Long on 7/29/13.
//  Copyright (c) 2013 Qian Long. All rights reserved.
//

#import "TempConverterViewController.h"

@interface TempConverterViewController ()
@property (nonatomic)NSInteger tag;
- (void) updateValues;
- (void) onConvertButton;
@end

@implementation TempConverterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Temperature Converter";
        //self.tag = 0;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.fahTextField.delegate = self;
    self.celTextField.delegate = self;
    [self.convertButton addTarget: self action:@selector(onConvertButton) forControlEvents:UIControlEventAllEvents];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextField delegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {

    textField.text = @"";
    return YES;
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    self.tag = textField.tag;
    return YES;
}

#pragma mark - Private methods

- (void) onConvertButton {
    
    [self.view endEditing:YES];
    [self updateValues];
}

- (void) updateValues {
    
    if (self.tag == 0) {
        //convert from F to C
        float temp = [self.fahTextField.text floatValue];
        float converted = (temp - 32) * (5.0 / 9.0);
        self.celTextField.text = [NSString stringWithFormat:@"%0.2f", converted];
    }
    else {
        //convert from C to F
        float temp = [self.celTextField.text floatValue];
        float converted = temp * (9.0 / 5.0) + 32;
        self.fahTextField.text = [NSString stringWithFormat:@"%0.2f", converted];
    }
}
@end
