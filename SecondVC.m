//
//  SecondVC.m
//  Popover
//
//  Created by IndiaNIC on 18/09/13.
//  Copyright (c) 2013 IndiaNIC. All rights reserved.
//

#import "SecondVC.h"
#import "ViewController.h"

@interface SecondVC ()

@end

@implementation SecondVC
@synthesize firstnameOutlet,lastnameOutlet,mobilenoOutlet,submitOutlet,aMuteArray,delegate;

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
//    objPopOver = [[UIPopoverController alloc]initWithContentViewController:self];
    aMuteArray=[[NSMutableArray alloc]init];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
   

    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    
    return YES;
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [firstnameOutlet resignFirstResponder];
    [lastnameOutlet resignFirstResponder];
    [mobilenoOutlet resignFirstResponder];
}


- (IBAction)submitAction:(id)sender
{
    NSString *FirstName = firstnameOutlet.text;
    NSString *LastName  = lastnameOutlet.text;
    NSString *MobileNo   = mobilenoOutlet.text;
    
    if ([firstnameOutlet.text isEqualToString:@""] || ([lastnameOutlet.text isEqualToString:@""]) || ([mobilenoOutlet.text isEqualToString:@""]))
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Invalid" message:@"Enter InPut" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        return;
    }
    else
    {
        NSDictionary *dictValue = [NSDictionary dictionaryWithObjectsAndKeys:FirstName,@"FirstName",LastName,@"LastName",MobileNo,@"MobileNo",nil];
        [aMuteArray addObject:dictValue];
        NSLog(@"amuttArray=%@",aMuteArray);
       
      
        [delegate passData:aMuteArray];
        
        
    }
  
}



@end
