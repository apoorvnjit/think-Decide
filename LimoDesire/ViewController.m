//
//  ViewController.m
//  LimoDesire
//
//  Created by Apoorva Reed on 6/11/18.
//  Copyright © 2018 Apoorva Reed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (BOOL)PhoneCheck: (NSString *)inputString;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)PhoneNumber:(UITextField *)sender {
    
}

- (IBAction)Password:(UITextField *)sender {
}
- (IBAction)SignUp:(UIButton *)sender {
    [self performSegueWithIdentifier: @"NavigateToRegister" sender: self];
}
- (IBAction)Login:(UIButton *)sender {
    NSString *phonenumber;
    NSString *password;
    phonenumber = self.PhoneNumber.text;
    password = self.Passsword.text;
//    BOOL *value;
    if (![self PhoneCheck:(phonenumber)]) {
        
        _PhoneNumber.text = @"";
              _Error.textColor = UIColor.redColor;
              _Error.text = @"Enter valid 10 digit number";
    }
    
    NSLog(@"%@", phonenumber);
    
}

- (BOOL)PhoneCheck: (NSString *)inputString{
    if (inputString.length!=10 ) {
        return false;
    } else {
        NSArray * arraynumber = [inputString componentsSeparatedByString: @""];
        for (int i = 0; i<inputString.length; i++) {
            if ([[arraynumber objectAtIndex: (i)] intValue] ) {
            }else{
                return false;
            }
        }
        
    }
    
    return true;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
