//
//  ViewController.m
//  Popover
//
//  Created by IndiaNIC on 18/09/13.
//  Copyright (c) 2013 IndiaNIC. All rights reserved.
//

#import "ViewController.h"
#import "SecondVC.h"
#import "CustomCell.h"
#import "UITableViewCell+Nib.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize  tblviewOutlet,asecondMuteArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.rightBarButtonItem =[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
      target:self action:@selector(Add:)];
    asecondMuteArray=[[NSMutableArray alloc]init];
   
   
    
}

-(void)passData:(NSMutableArray *)aAmit
{    
    [asecondMuteArray addObjectsFromArray:aAmit];
    [tblviewOutlet reloadData];
     NSLog(@"SecondArray Values = %@",[asecondMuteArray description]);
    [popover dismissPopoverAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)Add:(id)sender
{
    
    if(!popover)
    {
        secondvc=[[SecondVC alloc]initWithNibName:@"SecondVC" bundle:nil];
        secondvc.delegate=self;
        popover=[[UIPopoverController alloc]initWithContentViewController:secondvc];
        popover.delegate = self;
    }
     popover.popoverContentSize = CGSizeMake(521, 537);
    [popover presentPopoverFromBarButtonItem:self.navigationItem.rightBarButtonItem permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
 //   [popover presentPopoverFromRect:CGRectMake(100, 100, 110, 100) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [asecondMuteArray count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSString *CellIdentifier = @"TableCellWithNumberCellIdentifier";
  CustomCell *objcell=(CustomCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];

  if (objcell == nil)
  {
    NSArray *nib=[[NSBundle mainBundle]loadNibNamed:@"CustomCell" owner:self options:nil];
    objcell=[nib objectAtIndex:0];
}
    objcell.lblFirstName.text=[[asecondMuteArray objectAtIndex:indexPath.row]valueForKey:@"FirstName"];
    objcell.lblLastName.text=[[asecondMuteArray objectAtIndex:indexPath.row]valueForKey:@"LastName"];
    objcell.lblMobileNo.text=[[asecondMuteArray objectAtIndex:indexPath.row]valueForKey:@"MobileNo"];
    return objcell;



}

@end
