//
//  ViewController.m
//  UIMotionEffect
//
//  Created by iSongWei on 2017/4/11.
//  Copyright © 2017年 iSong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
     @property (readonly, nonatomic) NSString *keyPath;
     @property (readonly, nonatomic) UIInterpolatingMotionEffectType type;
     
     @property (nullable, strong, nonatomic) id minimumRelativeValue;
     @property (nullable, strong, nonatomic) id maximumRelativeValue;
     */
    
    /*
     keyPath，左右翻转屏幕将要影响到的属性，比如center.x。
     type（UIInterpolatingMotionEffectType类型），观察者视角，也就是屏幕倾斜的方式，目前区分水平和垂直两种方式。
     minimumRelativeValue和maximumRelativeValue，keyPath对应的值的变化范围，注意这个是id类型。min对应最小的offset，max对应最大的offset。
     */
    
    for (UIMotionEffect *effect in self.view.motionEffects)
    {
        //已经存在效果则删除效果
        [self.view removeMotionEffect:effect];
    }
    UIInterpolatingMotionEffect * xEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
    xEffect.minimumRelativeValue =  [NSNumber numberWithFloat:-100.0];
    xEffect.maximumRelativeValue = [NSNumber numberWithFloat:100.0];
    
    
    UIInterpolatingMotionEffect * yEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    yEffect.minimumRelativeValue =  [NSNumber numberWithFloat:-100.0];
    yEffect.maximumRelativeValue = [NSNumber numberWithFloat:100.0];
    
    [self.view addMotionEffect:xEffect];
    [self.view addMotionEffect:yEffect];
    
    
}




@end
