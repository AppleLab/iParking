///
//  ViewController.m
//  iParking
//
//  Created by Ramil Garaev on 12.08.13.
//  Copyright (c) 2013 Ramil Garaev. All rights reserved.
//



    
#import "ViewController.h"

    
@implementation ViewController

@synthesize main_map;
@synthesize array;

- (IBAction)GetMyLocation:(id)sender {
    [self MyLoc];
}

-(void)MyLoc{
    main_map.showsUserLocation = YES;
    [main_map setUserTrackingMode:MKUserTrackingModeFollow animated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        // Initialization code here.
    }
    return self;
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    self.main_map = nil;
}

// view annoation at map
-(void) MapToAnnotation{
    array = [DataStoreController GetArrayAnnotation];
    [main_map addAnnotations:array];

}

//скрытие клавиатуры
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [_search resignFirstResponder];
}

-(IBAction)dropPin:(id)sender{
    Annotation *an =[self closestPin];
    MKCoordinateRegion adjustedRegion = [main_map regionThatFits:MKCoordinateRegionMakeWithDistance(an.coordinate, 100 , 100)];
    [main_map setRegion:adjustedRegion animated:YES];
    
}


//возвращает аннотацию ближайшей точки
-(Annotation*) closestPin{
    CLLocationDistance min= CLLocationDistanceMax;
    Annotation* temp = [[Annotation alloc]init];
    for (int i=0; i<array.count; i++) {
    Annotation *an= [array objectAtIndex:i];
        CLLocation *pinLocation = [[CLLocation alloc] initWithLatitude:an.coordinate.latitude longitude:an.coordinate.longitude];
        CLLocation *myLocation = [[CLLocation alloc] initWithLatitude:main_map.userLocation.coordinate.latitude longitude:main_map.userLocation.coordinate.longitude];
    CLLocationDistance distance = [myLocation distanceFromLocation:pinLocation];
        if(min>distance){
            min =distance;
            temp=an;
    }
    }
    return temp;
}

- (IBAction)openMail:(id)sender {
    if ([MFMailComposeViewController canSendMail])
    {
        MFMailComposeViewController *mailer = [[MFMailComposeViewController alloc] init];
        mailer.mailComposeDelegate = self;
        [mailer setSubject:@"A Message from MobileTuts+"];
        NSArray *toRecipients = [NSArray arrayWithObjects:@"fisrtMail@example.com", @"secondMail@example.com", nil];
        [mailer setToRecipients:toRecipients];
        UIImage *myImage = [UIImage imageNamed:@"mobiletuts-logo.png"];
        NSData *imageData = UIImagePNGRepresentation(myImage);
        [mailer addAttachmentData:imageData mimeType:@"image/png" fileName:@"mobiletutsImage"];
        NSString *emailBody = @"Have you seen the MobileTuts+ web site?";
        [mailer setMessageBody:emailBody isHTML:NO];
        [self presentModalViewController:mailer animated:YES];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Failure"
                                                        message:@"Your device doesn't support the composer sheet"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
}

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled: you cancelled the operation and no email message was queued.");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved: you saved the email message in the drafts folder.");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail send: the email message is queued in the outbox. It is ready to send.");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail failed: the email message was not saved or queued, possibly due to an error.");
            break;
        default:
            NSLog(@"Mail not sent.");
            break;
    }
    // Remove the mail view
    [self dismissModalViewControllerAnimated:YES];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    CLLocationCoordinate2D startCoord = CLLocationCoordinate2DMake(55.779215877174096, 49.129743576049805);
    MKCoordinateRegion adjustedRegion = [main_map regionThatFits:MKCoordinateRegionMakeWithDistance(startCoord, 20000 , 20000)];
    [main_map setRegion:adjustedRegion animated:YES];
       main_map.showsUserLocation = YES;
    [self MapToAnnotation];
    
    //add new code
    
    
}

@end

