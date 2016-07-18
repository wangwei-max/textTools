
#import <Foundation/Foundation.h>

@interface WWDateItem : NSObject
@property (nonatomic, assign) NSInteger day;
@property (nonatomic, assign) NSInteger hour;
@property (nonatomic, assign) NSInteger minute;
@property (nonatomic, assign) NSInteger second;
@end

@interface NSDate (WWExtension)
- (WWDateItem *)WW_timeIntervalSinceDate:(NSDate *)anotherDate;

- (BOOL)WW_isToday;
- (BOOL)WW_isYesterday;
- (BOOL)WW_isTomorrow;
- (BOOL)WW_isThisYear;
//获取今天周几
- (NSInteger)getNowWeekday;
@end
