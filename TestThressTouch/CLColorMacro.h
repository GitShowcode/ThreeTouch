//
//  CLColorMacro.h
//  Careliver
//
//  Created by augbase on 15-2-12.
//  Copyright (c) 2015年 Jpxin. All rights reserved.
//
#ifndef Careliver_CLColorMacro_h
#define Careliver_CLColorMacro_h


//#ifdef __OPTIMIZE__
//#define NSLog(...) NSLog(__VA_ARGS__)
//#else
//#define NSLog(...) {}
//#endif


//#define Baseurl @"http://112.126.68.192/careliver/index.php/interface/"
//#define Baseurl @"http://182.92.107.14/index.php/Interface/"
#define Baseurl @"http://182.92.107.14/index.php/Interface/"
#define BaseurlWS @"http://112.126.68.192:8088/loveliver/"

//测试地址(正式部署时会有改动)：http://112.126.68.192:8080/loveliver/
#define RGB(__r, __g, __b)  [UIColor colorWithRed:(1.0*(__r)/255)\
green:(1.0*(__g)/255)\
blue:(1.0*(__b)/255)\
alpha:1.0]



#define IMAGE(A) [UIImage imageNamed:A]
#define Fontsize(A) [UIFont systemFontOfSize:A]

//
#define ShQuestion  [UIColor colorWithRed:247.0/255 green:247.0/255 blue:247.0/255 alpha:1]
#define ShColorA3 [UIColor colorWithRed:175.0/255 green:175.0/255 blue:175.0/255 alpha:1]
#define My_settingcolor [UIColor colorWithRed:235.0/255 green:235.0/255 blue:235.0/255 alpha:1]

#define Fixtabelcolor  [UIColor colorWithRed:246.0/255 green:246.0/255 blue:246.0/255 alpha:1]

#define colorseacrchbg [UIColor colorWithRed:246.0/255 green:251.0/255 blue:251.0/255 alpha:1]

#define coloraskbg [UIColor colorWithRed:237.0/255 green:247.0/255 blue:247.0/255 alpha:1]
#define colorRGBNAVBG [UIColor colorWithRed:6.0/255 green:205.0/255 blue:171.0/255 alpha:1]

#define colornewline  [UIColor colorWithRed:56.0/255 green:194.0/255 blue:212.0/255 alpha:1]

//table 背景色
#define colorRGBN1 [UIColor colorWithRed:235.0/255 green:235.0/255 blue:235.0/255 alpha:1]
/*秘密内容颜色**/
#define colorRGBN2 [UIColor colorWithRed:102.0/255 green:102.0/255 blue:102.0/255 alpha:1]
/**昵称颜色*/
#define colorRGBN3 [UIColor colorWithRed:90.0/255 green:114.0/255 blue:134.0/255 alpha:1]
 
#define colornavtitle [UIColor colorWithRed:5.0/255 green:147.0/255 blue:255.0/255 alpha:1]
#define colortypetop1 [UIColor colorWithRed:56.0/255 green:194.9/255 blue:212.0/255 alpha:1]
//背景色
#define colorRGBA9 [UIColor colorWithRed:248.0/255 green:248.0/255 blue:248.0/255 alpha:1]
//分割线
//#define colorRGBA3 [UIColor colorWithRed:183.0/255 green:183.0/255 blue:183.0/255 alpha:1]
 #define colorRGBA3 [UIColor colorWithRed:225.0/255 green:225.0/255 blue:225.0/255 alpha:1]
// yz
//typetop title
#define colorRGBA4 [UIColor colorWithRed:50.0/255 green:50.0/255 blue:50.0/255 alpha:1]



#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

#define JNormal UIControlStateNormal
#define JAction UIControlEventTouchUpInside
#define KK_COLOR_TABTITLE [UIColor colorWithRed:243/255.0 green:106/255.0 blue:104/255.0 alpha:1.0]

#define KK_COLOR_NAVBG [UIColor colorWithRed:244/255.0 green:127/255.0 blue:126/255.0 alpha:1.0]

#endif
