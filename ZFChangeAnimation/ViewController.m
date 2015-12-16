//
//  ViewController.m
//  ZFChangeAnimation
//
//  Created by macOne on 15/12/11.
//  Copyright © 2015年 WZF. All rights reserved.
//

#import "ViewController.h"
#import "ChangeAnimationView.h"

@interface ViewController ()

@property (strong , nonatomic) ChangeAnimationView *animationView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _animationView = [[ChangeAnimationView alloc] initWithFrame:CGRectMake(0, 150, self.view.bounds.size.width, 120)];
    [self.view addSubview:_animationView];
    

    
    UIButton *startButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    startButton.frame = CGRectMake(10, 300, 100, 50);
    [startButton addTarget:self action:@selector(startAnimation:) forControlEvents:UIControlEventTouchUpInside];
    [startButton setTitle:@"启动动画" forState:UIControlStateNormal];
    [self.view addSubview:startButton];
    
    UIButton *stopButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    stopButton.frame = CGRectMake(110, 300, 100, 50);
    [stopButton addTarget:self action:@selector(stopAnimation:) forControlEvents:UIControlEventTouchUpInside];
    [stopButton setTitle:@"暂停动画" forState:UIControlStateNormal];
    [self.view addSubview:stopButton];
    
    UIButton *resumeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    resumeButton.frame = CGRectMake(210, 300, 100, 50);
    [resumeButton addTarget:self action:@selector(resumeAnimation:) forControlEvents:UIControlEventTouchUpInside];
    [resumeButton setTitle:@"恢复动画" forState:UIControlStateNormal];
    [self.view addSubview:resumeButton];
    

}

-(void)startAnimation:(UIButton *)sender
{
    [_animationView startAnimation];
}


-(void)stopAnimation:(UIButton *)sender
{
    [_animationView stopAnimation];
}

-(void)resumeAnimation:(UIButton *)sender
{
    [_animationView resumeAnimation];
}
@end
