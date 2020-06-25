//
//  FirstViewController.m
//  task6
//
//  Created by Dmitriy Sutygin on 23.06.2020.
//  Copyright © 2020 Dmitriy Sutygin. All rights reserved.
//

#import "FirstViewController.h"
#import "UIColor+UIColor_category.h"
#import "GalleryViewController.h"
#import "GalleryTabBarViewController.h"

static CGFloat const kButtonViewWidth = 300;
static CGFloat const kButtonViewHeight = 55;

@interface FirstViewController ()

@property (nonatomic, assign) UIViewController *galleryTabBarController;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    [self setupViews];
}

- (void) setupViews {
    
    UILabel *lable = [UILabel new];
    lable.text = @"Are you ready?";
    lable.textColor = [UIColor colorWithHexString:@"#101010"];
    UIFont *font = [UIFont systemFontOfSize:24.0 weight:UIFontWeightMedium];
    lable.font = font;
    lable.textAlignment = NSTextAlignmentCenter;
    lable.lineBreakMode = NSLineBreakByWordWrapping;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor colorWithHexString:@"#F9CC78"];
    [button setTitle:@"START" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor colorWithHexString:@"#101010"] forState:(UIControlState)UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:20.0 weight:UIFontWeightMedium];
    button.layer.cornerRadius = 27.5;
    [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:lable];
    [self.view addSubview:button];
    
    button.translatesAutoresizingMaskIntoConstraints = false;
    lable.translatesAutoresizingMaskIntoConstraints = false;

    [NSLayoutConstraint activateConstraints:@[
        [button.topAnchor constraintEqualToAnchor:self.view.centerYAnchor constant:self.view.bounds.size.height/4],
        [button.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [button.widthAnchor constraintEqualToConstant:kButtonViewWidth],
        [button.heightAnchor constraintEqualToConstant:kButtonViewHeight],
        
        [lable.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [lable.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor constant:-self.view.bounds.size.height/4],
        [lable.widthAnchor constraintEqualToConstant:200],
        [lable.heightAnchor constraintEqualToConstant:40]
    ]];
    
}

-(void)setSelectedViewController:(UIViewController *)selectedViewController {
    [self transitionToChildViewController:selectedViewController];
    _selectedViewController = selectedViewController;
//    [self updateButtonSelection];
}

-(void)setGalleryTabBarController:(UIViewController *)galleryTabBarController {
    [self transitionToChildViewController:galleryTabBarController];
    _galleryTabBarController = galleryTabBarController;
//    [self updateButtonSelection];
}

- (void)buttonTapped:(UIButton *)button {
    GalleryTabBarViewController *galleryTabBarController = [GalleryTabBarViewController new];
    self.galleryTabBarController = galleryTabBarController;
}

- (void)transitionToChildViewController:(UIViewController *)toViewController {
    
    UIViewController *fromViewController = ([self.childViewControllers count] > 0 ? self.childViewControllers[0] : nil);
    if (toViewController == fromViewController || ![self isViewLoaded]) {
        return;
    }
    
    [self addChildViewController:toViewController];
    toViewController.view.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:toViewController.view];
    [toViewController didMoveToParentViewController:self];

}

//- (void)nextTapped:(id)sender {
//    SecondViewController *secondViewController = [SecondViewController new];
//    [self.navigationController pushViewController:secondViewController animated:YES];
//
//}


@end
