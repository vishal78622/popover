#import "UITableViewCell+Nib.h"

@implementation UITableViewCell (Nib)


+ (NSString*)nibName {
	return NSStringFromClass(self);
}


+ (NSString*)reuseIdentifier {
	return NSStringFromClass(self);
}


+ (id)loadFromNib {
	return [self loadFromNibName:[self nibName] bundle:nil reuseIdentifier:[self reuseIdentifier]];
}

+ (id)loadFromNib :(NSString *)nibName {
	return [self loadFromNibName:nibName bundle:nil reuseIdentifier:[self reuseIdentifier]];
}


+ (id)loadFromNibName:(NSString*)nibName bundle:(NSBundle*)bundle reuseIdentifier:(NSString*)reuseIdentifier {
	
	if (!bundle) bundle = [NSBundle mainBundle];
		
	NSArray* objects = [bundle loadNibNamed:nibName owner:self options:nil];

	if (objects.count == 0) {
		[NSException raise:@"Wrong nib for custom cell" format:@"Can't find nib '%@' for custom cell '%@'", nibName, self];
	}

	id cell = nil;
	
	for (id obj in objects) {
		if ([obj isKindOfClass:self]) {
			cell = obj;
			break;
		}
	}
	
	[cell setValue:reuseIdentifier forKey:@"_reuseIdentifier"];
	return cell;
}

@end
