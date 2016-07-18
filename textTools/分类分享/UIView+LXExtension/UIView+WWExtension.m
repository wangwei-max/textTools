
#import "UIView+WWExtension.h"

@implementation UIView (WWExtension)
- (BOOL)WW_intersectsWithView:(UIView *)view
{
    //都先转换为相对于窗口的坐标，然后进行判断是否重合
    CGRect selfRect = [self convertRect:self.bounds toView:nil];
    CGRect viewRect = [view convertRect:view.bounds toView:nil];
    return CGRectIntersectsRect(selfRect, viewRect);
}

+ (instancetype)WW_viewFromXib
{
    
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil].firstObject;
}

- (CGFloat)WW_centerX
{
    return self.center.x;
}
- (void)setWW_centerX:(CGFloat)WW_centerX
{
    CGPoint center = self.center;
    center.x = WW_centerX;
    self.center = center;
}
- (CGFloat)WW_centerY
{
    return self.center.y;
}
- (void)setWW_centerY:(CGFloat)WW_centerY
{
    CGPoint center = self.center;
    center.y = WW_centerY;
    self.center = center;
}
- (CGSize)WW_size
{
    return self.frame.size;
}

- (void)setWW_size:(CGSize)WW_size
{
    CGRect frame = self.frame;
    frame.size = WW_size;
    self.frame = frame;
}

- (CGFloat)WW_width
{
    return self.frame.size.width;
}

- (CGFloat)WW_height
{
    return self.frame.size.height;
}

- (void)setWW_width:(CGFloat)WW_width
{
    CGRect frame = self.frame;
    frame.size.width = WW_width;
    self.frame = frame;
}
- (void)setWW_height:(CGFloat)WW_height
{
    CGRect frame = self.frame;
    frame.size.height = WW_height;
    self.frame = frame;
}

- (CGFloat)WW_x
{
    return self.frame.origin.x;
}

- (void)setWW_x:(CGFloat)WW_x
{
    CGRect frame = self.frame;
    frame.origin.x = WW_x;
    self.frame = frame;
}

- (CGFloat)WW_y
{
    return self.frame.origin.y;
}

- (void)setWW_y:(CGFloat)WW_y
{
    CGRect frame = self.frame;
    frame.origin.y = WW_y;
    self.frame = frame;
}

@end
