//
//  YHStoryBoadAutoLayout.h
//  MotorcycleBanditGame
//
//  Created by 邱弘宇 on 15-5-5.
//  Copyright (c) 2015年  邱先生. All rights reserved.
//
//  由于本工具类采用等比放大适配所有尺寸的屏幕，所以在有 navigation 导航器的视图中靠近顶部导航器的控件会有細微的视觉误差，这是由于 navigation 无法被拉伸所导致的。如果有强迫症的同学在这里建议对靠近 navigation 的控件添加限制来处理。
//  使用本类，只需调用如下唯一一个方法，将需要适配的控制器根视图 self.view 传入即可。
//  建议为所有控制器添加一个父类，并在父类的loadview中调用方法。
//
//

#define KScr_W(Value) ((Value/320.0)*[UIScreen mainScreen].applicationFrame.size.width)//适配屏幕宽度,以4寸屏幕为准
#define KScr_H(Value,Hoffset) ((Value/568.0)*([UIScreen mainScreen].applicationFrame.size.height+Hoffset))//适配屏幕高度,以4寸屏幕为准
#define KScr_X(Value,Xoffset) ((Value+Xoffset)/(320.0+(Xoffset)))*([UIScreen mainScreen].applicationFrame.size.width-320.0)+Value//适配X坐标,以4寸屏幕为准
#define KScr_Y(Value,Yoffset) Value/568.0*([UIScreen mainScreen].applicationFrame.size.height+Yoffset)//适配Y坐标,以4寸屏幕为准

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface YHStoryBoadAutoLayout : NSObject
- (void)autoLayoutView:(UIView *)view;
@end
