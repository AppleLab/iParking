//
//  EditViewController.m
//  iParking
//
//  Created by user on 21.08.13.
//  Copyright (c) 2013 Ramil Garaev. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()

@end

@implementation EditViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.PinTitle.text=@"Моя точка";
    self.SubTitle.text=@"Новая точка";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//скрытие клавиатуры
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_PinTitle resignFirstResponder];
    [_SubTitle resignFirstResponder];
}


- (IBAction)GetDirection:(id)sender {

    BOOL *b=[DataStoreController AddAnnotation:self.PinTitle.text andSubtitle:self.SubTitle.text andlongitude:self.coordinate];
    if (b) {
        NSLog(@"nice");
        NSLog(@"%f,     %f",self.coordinate.latitude,self.coordinate.longitude);
    }
    else NSLog(@"BAd");
};

- (IBAction)DeletePin:(id)sender {
}
@end
