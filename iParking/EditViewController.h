//
//  EditViewController.h
//  iParking
//
//  Created by user on 21.08.13.
//  Copyright (c) 2013 Ramil Garaev. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DataStore.h"

@protocol ADCDelegate

- (void)createPinWithTitle:(NSString *)pinTitle andWithSubtitle: (NSString *)pinSubtitle;

@end

@interface EditViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *PinTitle;
@property (weak, nonatomic) IBOutlet UITextView *SubTitle;


- (IBAction)GetDirection:(id)sender;

@property id<ADCDelegate> delegate;

@end
