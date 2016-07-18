
#import <UIKit/UIKit.h>

@interface UIView (WWExtension)
/**
 *  快速设置控件的位置
 */
@property (nonatomic, assign) CGSize WW_size;
@property (nonatomic, assign) CGFloat WW_width;
@property (nonatomic, assign) CGFloat WW_height;
@property (nonatomic, assign) CGFloat WW_x;
@property (nonatomic, assign) CGFloat WW_y;
@property (nonatomic, assign) CGFloat WW_centerX;
@property (nonatomic, assign) CGFloat WW_centerY;

/**
 *  快速根据xib创建View
 */
+ (instancetype)WW_viewFromXib;

/**
 *  判断self和view是否重叠
 */
- (BOOL)WW_intersectsWithView:(UIView *)view;

@end
