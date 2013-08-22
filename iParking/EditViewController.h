//
//  EditViewController.h
//  iParking
//
//  Created by user on 21.08.13.
//  Copyright (c) 2013 Ramil Garaev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "DataStore.h"

@interface EditViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *PinTitle;
@property (weak, nonatomic) IBOutlet UITextView *SubTitle;
@property CLLocationCoordinate2D coordinate;

- (IBAction)GetDirection:(id)sender;
- (IBAction)DeletePin:(id)sender;

@end
