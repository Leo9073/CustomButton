//
//  ViewController.m
//  自定义控件-BUTTON
//
//  Created by Leo on 10/9/16.
//  Copyright © 2016 Leo. All rights reserved.
//

#import "ViewController.h"
#import "LLCustomButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    LLCustomButton *button = [[LLCustomButton alloc]initWithFrame:CGRectMake(0, 0, 200, 200) andImage:[UIImage imageNamed:@"logo_client@3X"] andTitle:@"归途" withCompletionBlock:^{
        NSLog(@"点击了");
    }];
    
    button.backgroundColor = [UIColor redColor];
    button.center = self.view.center;
    [self.view addSubview:button];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
