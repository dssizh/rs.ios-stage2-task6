//
//  InfoViewController.m
//  task6
//
//  Created by Dmitriy Sutygin on 25.06.2020.
//  Copyright © 2020 Dmitriy Sutygin. All rights reserved.
//

#import "InfoViewController.h"
#import "UIColor+UIColor_category.h"
#import "FirstViewController.h"

@interface InfoViewController ()
@property (nonatomic, assign) UIViewController *rootViewController;
@end

@implementation InfoViewController

- (instancetype)initWithRootController:(UIViewController *)controller {
    self = [super init];
    if (self) {
        _rootViewController = controller;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithHexString:@"#FFFFFF"];
    [self setupViews];
    [self setupHeaderView];
}

-(void) setupViews {
}

-(void) setupHeaderView{
    UIView *headerView = [UIView new];
    headerView.backgroundColor = [UIColor colorWithHexString:@"#F9CC78"];
    headerView.translatesAutoresizingMaskIntoConstraints = false;
    
    [self.view addSubview:headerView];
    [NSLayoutConstraint activateConstraints:@[
        [headerView.heightAnchor constraintEqualToConstant:100],
        [headerView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
        [headerView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor]
    ]];
    
    UILabel *headerText = [UILabel new];
    headerText.text = @"Info";
    headerText.font = [UIFont systemFontOfSize:18.0 weight:UIFontWeightSemibold];
    headerText.textColor = [UIColor colorWithHexString:@"#101010"];
    
    [headerView addSubview:headerText];
    headerText.translatesAutoresizingMaskIntoConstraints = false;
    [NSLayoutConstraint activateConstraints:@[
        [headerText.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [headerText.centerYAnchor constraintEqualToAnchor:headerView.centerYAnchor constant:20]
    ]];
    
}

@end
