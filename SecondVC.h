//
//  SecondVC.h
//  Popover
//
//  Created by IndiaNIC on 18/09/13.
//  Copyright (c) 2013 IndiaNIC. All rights reserved.
//


@protocol amit <NSObject>

-(void) passData:(NSMutableArray *) aAmit;

@end

@interface SecondVC : UIViewController
{
}
@property (strong, nonatomic) IBOutlet UITextField *firstnameOutlet;
@property (strong, nonatomic) IBOutlet UITextField *lastnameOutlet;
@property (strong, nonatomic) IBOutlet UITextField *mobilenoOutlet;
- (IBAction)submitAction:(id)sender;

@property (strong, nonatomic) IBOutlet UIButton *submitOutlet;
@property (strong, nonatomic) NSMutableArray *aMuteArray;

@property (strong,nonatomic) id <amit> delegate;

@end
