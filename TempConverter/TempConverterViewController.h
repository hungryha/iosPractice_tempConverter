//
//  TempConverterViewController.h
//  TempConverter
//
//  Created by Qian  Long on 7/29/13.
//  Copyright (c) 2013 Qian Long. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TempConverterViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UITextField *fahTextField;
@property (nonatomic, weak) IBOutlet UITextField *celTextField;
@property (nonatomic, weak) IBOutlet UIButton *convertButton;

@end
