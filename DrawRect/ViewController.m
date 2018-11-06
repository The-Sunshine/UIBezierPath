//
//  ViewController.m
//  DrawRect
//
//  Created by eagle on 2018/9/26.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "ViewController.h"
#import "DrawRectView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    DrawRectView * view = [[DrawRectView alloc]init];
    view.frame = CGRectMake(100, 100, 250, 250);
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
}


@end
