
#import <UIKit/UIKit.h>

@interface UIBarButtonItem (WWExtension)
+ (instancetype)WW_itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;
@end
