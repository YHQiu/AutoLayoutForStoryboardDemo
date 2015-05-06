//
//  YHStoryBoadAutoLayout.m
//  MotorcycleBanditGame
//
//  Created by 邱弘宇 on 15-5-5.
//  Copyright (c) 2015年  邱先生. All rights reserved.
//

#import "YHStoryBoadAutoLayout.h"

@implementation YHStoryBoadAutoLayout
- (void)autoLayoutView:(UIView *)view{
    CGFloat xoff = 0;
    CGFloat yoff = 0;
    CGFloat hoff = 0;
    if ([UIApplication sharedApplication].statusBarHidden == NO) {
        yoff = 20;
        hoff = 20;
    }
    NSLog(@"%f",[UIScreen mainScreen].applicationFrame.size.height);
    
    //遍历第一层子视图
    for (UIView *view1 in view.subviews) {
        NSLog(@"lastFramey:%f",view1.frame.origin.y);
        NSLog(@"lastFrame_height:%f",view1.frame.size.height);
        view1.frame = CGRectMake(KScr_X(view1.frame.origin.x,xoff), KScr_Y(view1.frame.origin.y, yoff), KScr_W(view1.frame.size.width), KScr_H(view1.frame.size.height,hoff));
        NSLog(@"nowFramey:%f",view1.frame.origin.y);
        NSLog(@"nowFrame_height:%f",view1.frame.size.height);

        //遍历第二层子视图
        for (UIView *view2 in view1.subviews) {
            view2.frame = CGRectMake(KScr_X(view2.frame.origin.x,xoff), KScr_Y(view2.frame.origin.y, yoff), KScr_W(view2.frame.size.width), KScr_H(view2.frame.size.height,hoff));
            //遍历第三层子视图
            for (UIView *view3 in view2.subviews) {
                view3.frame = CGRectMake(KScr_X(view3.frame.origin.x,xoff), KScr_Y(view3.frame.origin.y, yoff), KScr_W(view3.frame.size.width), KScr_H(view3.frame.size.height,hoff));
            }
        }
    }
}
@end
