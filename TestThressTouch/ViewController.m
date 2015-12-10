//
//  ViewController.m
//  TestThressTouch
//
//  Created by jiapeixin on 15/10/8.
//  Copyright © 2015年 Gencare_Jia. All rights reserved.
//

#import "ViewController.h"
#import "PreviewViewController.h"
#import "ConfirmViewController.h"
@interface ViewController ()

@end

@implementation ViewController
-(void)viewWillAppear:(BOOL)animated{
    [self check3DTouch];
    [super viewWillAppear:animated];
    
}
- (void)check3DTouch {
    

}
#pragma mark- touch 3d

- (UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location {
    NSLog(@"%f--%f",location.x,location.y);
    
    // check if we're not already displaying a preview controller
//    NSLog(@"%@",);
    JTableViewCell *cell=(JTableViewCell *)previewingContext.sourceView;
    
    NSLog(@"%ld",cell.myindexpath.row);
    
    Kobj *obj=self.mydatas[cell.myindexpath.row];
    
    if ([self.presentedViewController isKindOfClass:[PreviewViewController class]]) {
        return nil;
    }
    
    // shallow press: return the preview controller here (peek)
  
    PreviewViewController *previewController = [[PreviewViewController alloc] init];
    previewController.mytitle=[NSString stringWithFormat:@"预览-%@",obj.newtitle];
    return previewController;
}

- (void)previewingContext:(id<UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit {
    
    // deep press: bring up the commit view controller (pop)
  
    JTableViewCell *cell=(JTableViewCell *)previewingContext.sourceView;
    
    NSLog(@"%ld",cell.myindexpath.row);
    
    Kobj *obj=self.mydatas[cell.myindexpath.row];

    
    ConfirmViewController *confirmVC = [[ConfirmViewController alloc] init];
    confirmVC.mytitle=[NSString stringWithFormat:@"完成-%@",obj.newtitle];
    [self showViewController:confirmVC sender:self];
    
    // alternatively, use the view controller that's being provided here (viewControllerToCommit)
}
- (void)traitCollectionDidChange:(UITraitCollection *)previousTraitCollection {
    [self check3DTouch];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"3D-Touch";
    self.mytableview=[[UITableView alloc] initWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, SCREEN_HEIGHT-64)];
    self.mytableview.dataSource=self;
    self.mytableview.delegate=self;
    [self.view addSubview:self.mytableview];
    self.mytableview.separatorColor=[UIColor clearColor];
    self.mytableview.rowHeight=80;
    
    [self datasource];
    
    
}
-(void)datasource{
    
    self.mydatas=[NSMutableArray arrayWithCapacity:10];
    for (int i=0; i<30; i++) {
        Kobj *obj=[[Kobj alloc] init];
        obj.newtitle=[NSString stringWithFormat:@"index-%d Three-touch ",i+1];
        obj.imgurl=@"779139_132746625197_2.jpg";
        [self.mydatas addObject:obj];
    }
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    

    static NSString *cellid=@"threecell";
    JTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellid];
    if (cell==nil) {
        cell=[[JTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        [self registerForPreviewingWithDelegate:(id)self sourceView:cell];

    }
  //  [self unregisterForPreviewingWithContext:self.previewingContext];
    
//  self.previewingContext =
    Kobj *obj=self.mydatas[indexPath.row];
    
    cell.newcontIMG.image=[UIImage imageNamed:obj.imgurl];
    cell.mylabel.text=obj.newtitle;
    cell.lineview.hidden=NO;
    cell.myindexpath=indexPath;
    
    if (indexPath.row==self.mydatas.count-1) {
        cell.lineview.hidden=YES;
    }
    return cell;
    
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.mydatas.count;
    
}
//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
