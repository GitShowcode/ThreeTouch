//
//  ConfirmViewController.m
//  TestThressTouch
//
//  Created by jiapeixin on 15/10/9.
//  Copyright © 2015年 Gencare_Jia. All rights reserved.
//

#import "ConfirmViewController.h"
#import "CLColorMacro.h"
@interface ConfirmViewController ()

@end

@implementation ConfirmViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"最终视图";
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    
    self.mylabel=[[UILabel alloc] initWithFrame:CGRectMake(0, 200, SCREEN_WIDTH, 50)];
    self.mylabel.backgroundColor=[UIColor blueColor];
    self.mylabel.textColor=[UIColor whiteColor];
    self.mylabel.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:self.mylabel];
    self.mylabel.text=self.mytitle;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
