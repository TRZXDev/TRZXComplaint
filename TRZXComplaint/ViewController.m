//
//  ViewController.m
//  TRZXComplaint
//
//  Created by Rhino on 2017/3/2.
//  Copyright © 2017年 Rhino. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator+TRZXComplaint.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
//[@"type"] integerValue];
//complaints.targetId = params[@"targetId"];
//complaints.userTitle = params[@"userTitle"];

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UIViewController *complaints = [[CTMediator sharedInstance]
                                    TRZXComplaint_TRZXComplaintViewController:@{@"type":@"1",
                                                                                @"targetId":@"",
                                                                                @"userTitle":@"xx"
                                                                                }];
    
    [self.navigationController pushViewController:complaints animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
