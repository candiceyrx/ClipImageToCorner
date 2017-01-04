//
//  ViewController.m
//  ClipImageToCorner
//
//  Created by Candice on 17/1/4.
//  Copyright © 2017年 刘灵. All rights reserved.
//

#import "ViewController.h"
#import "ImageTool.h"

@interface ViewController ()
@property (nonatomic, strong)UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.imageView];
    
    //裁剪的图片半径根据自己的需要改变
    UIImage *image = [ImageTool dealImage:[UIImage imageNamed:@"lena"] cornerRadius:250];
    self.imageView.image = image;
}

- (UIImageView *)imageView {
    if (_imageView == nil) {
        _imageView = [[UIImageView alloc]init];
        _imageView.contentMode = UIViewContentModeScaleAspectFit;
        _imageView.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width-200)/2, 200, 200, 200);
    }
    return _imageView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
