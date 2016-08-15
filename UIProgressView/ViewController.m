//
//  ViewController.m
//  UIProgressView
//
//  Created by 王玉翠 on 16/8/12.
//  Copyright © 2016年 王玉翠. All rights reserved.
//

#import "ViewController.h"
#import "UIProgressView+Radius.h"
@interface ViewController ()

@property (nonatomic, strong) UIProgressView *progressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
    
    
}


-(void)viewWillAppear:(BOOL)animated{
    //无论如何设置 progressView 的高度，其最终显示出来的高度都不会变化。所以如果想改变高度，可以换个思路，通过改变 progressView 的 scale（缩放比例）来实现
    _progressView = [[UIProgressView alloc] initWithFrame:CGRectMake(50, 50, 300, 20)];
    
    _progressView.transform = CGAffineTransformMakeScale(1, 4);
    
    [_progressView setProgressViewStyle:UIProgressViewStyleBar];
    _progressView.progress = .0;

    [_progressView setRadiusTrackColor:[UIColor grayColor] progressColor:[UIColor magentaColor]];
    
    [self.view addSubview:_progressView];

    
}



- (IBAction)btn:(UIButton *)sender {
    [UIView animateWithDuration:0.4 animations:^{
        
    }];
    
   
       [_progressView setProgress:0.6 animated:NO];
       
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
