//
//  ViewController.h
//  TestThressTouch
//
//  Created by jiapeixin on 15/10/8.
//  Copyright © 2015年 Gencare_Jia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CLColorMacro.h"
#import "LLColor.h"
#import "JTableViewCell.h"
#import "Kobj.h"

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIViewControllerPreviewingDelegate>

@property (nonatomic,strong)UITableView *mytableview;
@property (nonatomic,strong)NSMutableArray *mydatas;
@property (nonatomic,assign)id <UIViewControllerPreviewing>previewingContext;

@end


