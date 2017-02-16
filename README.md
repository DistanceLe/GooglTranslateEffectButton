# GooglTranslateEffectButton
UIButton and Click effect
最近下载了谷歌翻译的APP  看到里面的按钮点击效果挺不错的。就自己模仿着做了一个。

使用和UIButton 一样，也可以吧现有的UIButton 换成LJButton_Google。 直接就可显示效果了。


	LJButton_Google* but1=[LJButton_Google buttonWithType:UIButtonTypeCustom];

    but1.frame=CGRectMake(20, 50, 200, 100);
    
    but1.backgroundColor=[[UIColor lightGrayColor]colorWithAlphaComponent:0.5];
    
    [but1 setTitle:@"firstButton" forState:UIControlStateNormal];
    
    [but1 addTargetClickHandler:^(UIButton *but, id obj) {
        NSLog(@"..%@", but.titleLabel.text);
    }];
    
    but1.circleEffectColor=[UIColor redColor];
    [self.view addSubview:but1];

效果如下，图做的不是很好。。

![image](https://github.com/DistanceLe/Images/raw/master/effectButton.gif)
