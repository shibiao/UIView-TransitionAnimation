//
//  ViewController.m
//  1
//
//  Created by sycf_ios on 2017/5/15.
//  Copyright © 2017年 shibiao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *oneImage;
@property (weak, nonatomic) IBOutlet UIImageView *twoImage;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *oneTap;
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *twoTap;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.oneImage.userInteractionEnabled = YES;
    self.twoImage.userInteractionEnabled = YES;
    [self.oneTap addTarget:self action:@selector(changeView:)];
    [self.twoTap addTarget:self action:@selector(changeView:)];
}
-(void)changeView:(UITapGestureRecognizer *)gesture{
    UIImageView *fromImageView = [gesture.view isEqual:self.oneImage] ? self.oneImage : self.twoImage ;
    UIImageView *toImageView = [gesture.view isEqual:self.oneImage] ? self.twoImage : self.oneImage ;
    [UIView transitionFromView:fromImageView toView:toImageView duration:1 options:UIViewAnimationOptionTransitionFlipFromLeft|UIViewAnimationOptionShowHideTransitionViews completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
