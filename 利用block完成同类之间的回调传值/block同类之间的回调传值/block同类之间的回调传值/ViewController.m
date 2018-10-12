//
//  ViewController.m
//  block同类之间的回调传值
//
//  Created by 赵鹏 on 2018/10/12.
//  Copyright © 2018 赵鹏. All rights reserved.
//

/**
 此Demo是按照"http://blog.csdn.net/mobanchengshuang/article/details/11751671"网站上的例子来撰写的，用来阐述在同一个类中如何利用block的回调函数进行传值的。
 */
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     系统运行到这里以后会先执行example: 方法；
     大括号里面的内容为block函数的实现（回调函数）。
     */
    [self example:^(int a, int b){
        int sum = a + b;
        NSLog(@"sum = %i", sum);
    }];
}

/**
 此方法把block函数作为方法的一个参数，在参数的部分来定义block函数
 */
- (void)example:(void (^) (int a, int b))finishBlock
{
    //block函数的调用
    finishBlock(10, 20);
}

@end
