//
//  ViewController.m
//  NSTimer-Test
//
//  Created by pxx on 2018/3/19.
//  Copyright © 2018年 平晓行. All rights reserved.
//

#import "ViewController.h"
#import "BViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)tiaoZhuan:(id)sender {
    
    BViewController *vc = [BViewController new];
    vc.view.backgroundColor  = [UIColor whiteColor];
    [self.navigationController pushViewController:vc animated:YES];
    
}

@end
