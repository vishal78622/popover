#import <UIKit/UIKit.h>

@interface UITableViewCell (Nib)

+ (NSString*)nibName;

+ (NSString*)reuseIdentifier;

+ (id)loadFromNib;

+ (id)loadFromNib :(NSString *)nibName;

+ (id)loadFromNibName:(NSString*)nibName bundle:(NSBundle*)bundle reuseIdentifier:(NSString*)reuseIdentifier;

@end
