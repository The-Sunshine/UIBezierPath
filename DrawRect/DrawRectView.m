//
//  DrawRectView.m
//  mvvm
//
//  Created by eagle on 2018/8/28.
//  Copyright © 2018年 eagle. All rights reserved.
//

#import "DrawRectView.h"

@implementation DrawRectView

- (void)drawRect:(CGRect)rect {

    //1.获取图形上下文
//    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    //2.添加图形区域
    
    //2 - (1) 绘制图形区域
//    UIBezierPath * path = [UIBezierPath bezierPath];
//    [path moveToPoint:CGPointMake(10, 10)];
//    [path addLineToPoint:CGPointMake(100, 10)];
//    [path addLineToPoint:CGPointMake(100, 100)];
//    [path addLineToPoint:CGPointMake(10, 100)];
    
    //2 - (1) 闭合路径
//    [path closePath];
    
    //2 - (2) 绘制图形区域
//    UIBezierPath * path = [UIBezierPath bezierPathWithRect:CGRectMake(10, 10, 100, 100)];
    
    //2 - (3) 绘制圆形
//    UIBezierPath * path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.frame.size.width / 2, self.frame.size.height / 2) radius:self.frame.size.width * 0.4 startAngle:0 endAngle:M_PI * 2 clockwise:NO];

    //2 - (4) 绘制圆形
//    UIBezierPath * path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(10, 10, 100, 100)];

    //2 - (5) 画文字
//    NSString * str = @"文件和期望和";
//    [str drawInRect:rect withAttributes:nil];

    //2 - (6) 画图片
//    UIImage * image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"5@2x.png" ofType:nil]];
//    [image drawInRect:rect blendMode:kCGBlendModeNormal alpha:1];
    
    //3.画线颜色
//    [[UIColor redColor]set];
    
    //4.添加路径
//    CGContextAddPath(contextRef, path.CGPath);
    
    //5.(1)显示路径
//    CGContextStrokePath(contextRef);
    
    //5.(2)显示路径  自动填充区域
//    CGContextFillPath(contextRef);
    
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    CGContextFillPath(contextRef);
    

    //绘制 圆形进度条
//    CGFloat startA = - M_PI_2;
//    CGFloat endA =  - M_PI_2 + self.progress * M_PI * 2;
//    NSLog(@"%f - %f - %f",self.progress,(3.14159265359*self.progress)/180,endA);
//    UIBezierPath * path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.bounds.size.width*0.5, self.bounds.size.height*0.5) radius:self.bounds.size.width*0.5-10 startAngle:startA endAngle:endA clockwise:YES];
//    [[UIColor colorWithRed:self.progress green:(1-self.progress) blue:0 alpha:1]setStroke];
//    path.lineWidth = 5;
//    [path stroke];
    
    NSArray * colors = @[(__bridge id)[UIColor colorWithRed:204.0 / 255.0 green:224.0 / 255.0 blue:244.0 / 255.0 alpha:1].CGColor,
                         (__bridge id)[UIColor colorWithRed:29.0 / 255.0 green:156.0 / 255.0 blue:215.0 / 255.0 alpha:1].CGColor,
                         (__bridge id)[UIColor colorWithRed:0.0 / 255.0 green:50.0 / 255.0 blue:126.0 / 255.0 alpha:1].CGColor];
    
    CAGradientLayer * layer = [CAGradientLayer layer];
    //设置大小
    layer.frame = CGRectMake(0, 0, 100, 100);
    //设置颜色
    layer.colors = colors;
    //渐变层的相对位置,起始点为0,终止点为1,中间点为 (point-startpoint)/(endpoint-startpoint)
    layer.locations = @[@0,@.5,@1];
    //渐变方向
    layer.startPoint = CGPointMake(0, 1);
    layer.endPoint = CGPointMake(1, 1);
    [self.layer addSublayer:layer];
}

@end
