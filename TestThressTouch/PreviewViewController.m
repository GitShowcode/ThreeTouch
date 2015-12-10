//
//  PreviewViewController.m
//  TestThressTouch
//
//  Created by jiapeixin on 15/10/8.
//  Copyright © 2015年 Gencare_Jia. All rights reserved.
//

#import "PreviewViewController.h"
#import "CLColorMacro.h"

@interface PreviewViewController ()

@end

@implementation PreviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self check3DTouch];

    self.view.backgroundColor=[UIColor whiteColor];
    self.mylabel=[[UILabel alloc] initWithFrame:CGRectMake(0, 200, SCREEN_WIDTH, 50)];
    self.mylabel.textAlignment=NSTextAlignmentCenter;
    self.mylabel.backgroundColor=[UIColor redColor];
    self.mylabel.textColor=[UIColor whiteColor];
    [self.view addSubview:self.mylabel];
    self.mylabel.text=self.mytitle;
    
    
    UIView *leftview=[UIView new];
    leftview.backgroundColor=[UIColor blueColor];
    leftview.frame=CGRectMake(0, 200+50, 10, 50);
    [self.view addSubview:leftview];
    
    
    UIView *rightview=[UIView new];
    rightview.backgroundColor=[UIColor blueColor];
    rightview.frame=CGRectMake(SCREEN_WIDTH-10, 200+50, 10, 50);
    [self.view addSubview:rightview];
    
    
}
-(void)check3DTouch{
    
}
#pragma mark - Preview Actions

- (NSArray<id<UIPreviewActionItem>> *)previewActionItems {
    
    // setup a list of preview actions
    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"赞一个" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
        //回调数据
        NSLog(@"赞一个啦啦");
    }];
    
    
    UIPreviewAction *action2 = [UIPreviewAction actionWithTitle:@"收藏" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
        //回调数据
        NSLog(@"收藏一个啦啦");
    }];
    
    UIPreviewAction *action3 = [UIPreviewAction actionWithTitle:@"F&Q" style:UIPreviewActionStyleDestructive handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
        //回调数据
        NSLog(@"--");
    }];

    
//    UIPreviewAction *action2 = [UIPreviewAction actionWithTitle:@"Destructive Action" style:UIPreviewActionStyleDestructive handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
//        NSLog(@"Destructive Action triggered");
//    }];
//    
//    UIPreviewAction *action3 = [UIPreviewAction actionWithTitle:@"Selected Action" style:UIPreviewActionStyleSelected handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
//        NSLog(@"Selected Action triggered");
//    }];
    
    // add them to an arrary
    NSArray *actions = @[action1,action2,action3];
    
    // add all actions to a group
//    UIPreviewActionGroup *group1 = [UIPreviewActionGroup actionGroupWithTitle:@"Action Group" style:UIPreviewActionStyleDefault actions:actions];
//    NSArray *group = @[group1];
    
    // and return them (return the array of actions instead to see all items ungrouped)
    return actions;
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
