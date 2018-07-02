//
//  ViewController.h
//  LimoDesire
//
//  Created by Apoorva Reed on 6/11/18.
//  Copyright © 2018 Apoorva Reed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *PhoneNumber;
@property (strong, nonatomic) IBOutlet UITextField *Passsword;

@property (strong, nonatomic)IBOutlet UILabel *Error;
@property BOOL *value;
@end

