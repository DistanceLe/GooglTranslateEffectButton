//
//  ViewController.m
//  GooglTranslateEffectButton
//
//  Created by LiJie on 16/9/5.
//  Copyright © 2016年 LiJie. All rights reserved.
//

#import "ViewController.h"

#import "UIButton+LJ.h"
#import "LJButton_Google.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LJButton_Google* but1=[LJButton_Google buttonWithType:UIButtonTypeCustom];
    but1.frame=CGRectMake(10, 50, 300, 200);
    but1.backgroundColor=[[UIColor lightGrayColor]colorWithAlphaComponent:0.5];
    [but1 setTitle:@"firstButton" forState:UIControlStateNormal];
    [but1 addTargetClickHandler:^(UIButton *but, id obj) {
        NSLog(@"..%@", but.titleLabel.text);
    }];
    but1.circleEffectTime = 2;
    but1.beginRadius = 2;
    but1.circleEffectColor = [UIColor redColor];
    [self.view addSubview:but1];
    
    
    LJButton_Google* but2=[LJButton_Google buttonWithType:UIButtonTypeCustom];
    but2.frame=CGRectMake(10, 270, 300, 200);
    but2.backgroundColor=[[UIColor lightGrayColor]colorWithAlphaComponent:0.5];
    [but2 setTitle:@"secondButton" forState:UIControlStateNormal];
    [but2 addTargetClickHandler:^(UIButton *but, id obj) {
        NSLog(@"..%@", but.titleLabel.text);
        
        
//        NSURL *url = [NSURL URLWithString:@"prefs:root=General"];
//        if ([[UIApplication sharedApplication] canOpenURL:url])
//        {
//            [[UIApplication sharedApplication] openURL:url];
//        }
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];
        
        NSURL*right_url=[NSURL URLWithString:@"prefs:root=General"];
        Class LSApplicationWorkspace = NSClassFromString(@"LSApplicationWorkspace");
        
        [[LSApplicationWorkspace performSelector:@selector(defaultWorkspace)] performSelector:@selector(openSensitiveURL:withOptions:) withObject:right_url withObject:nil];
    }];
    
    but2.circleEffectColor=[UIColor greenColor];
    [self.view addSubview:but2];
    
}



@end
