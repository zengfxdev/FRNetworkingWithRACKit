//
//  ViewController.m
//  FRNetworkingWithRACKit
//
//  Created by 曾凡旭 on 2017/5/9.
//  Copyright © 2017年 zengfxios. All rights reserved.
//

#import "ViewController.h"
#import "FRApiAppClient.h"
#import "NSString+Hash.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *dict = @{
                           @"mobile":@"15972226543",
                           @"password":[@"yp123456" sha256String],
                           };
    [[[FRApiAppClient sharedClient] requestWithMethod:FRRequestMethodPost
                                        relativePath:@"/v1/authenticate"
                                          parameters:dict
                                            needAuth:NO]
     subscribeNext:^(id  _Nullable x) {
        NSLog(@"%@",x);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
