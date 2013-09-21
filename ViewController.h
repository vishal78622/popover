//
//  ViewController.h
//  Popover
//
//  Created by IndiaNIC on 18/09/13.
//  Copyright (c) 2013 IndiaNIC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondVC.h"
@interface ViewController : UIViewController<UIPopoverControllerDelegate,UITableViewDataSource,UITableViewDataSource,amit>
{
    UIPopoverController *popover;
    SecondVC *secondvc;
}
@property (strong, nonatomic) IBOutlet UITableView *tblviewOutlet;
@property (strong, nonatomic) NSMutableArray *asecondMuteArray;
@end
