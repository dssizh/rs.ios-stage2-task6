//
//  HomeViewController.m
//  task6
//
//  Created by Dmitriy Sutygin on 25.06.2020.
//  Copyright © 2020 Dmitriy Sutygin. All rights reserved.
//

#import "HomeViewController.h"
#import "UIColor+UIColor_category.h"
#import "ShapeView.h"

@interface HomeViewController ()
@property (weak, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UIStackView *stackView;
@property (weak, nonatomic) IBOutlet UILabel *iphoneNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *modelLabel;
@property (weak, nonatomic) IBOutlet UILabel *systemLabel;
@property (weak, nonatomic) IBOutlet UIButton *openCvButton;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (nonatomic, assign) UITabBarController *rootViewController;
@end

@implementation HomeViewController

- (instancetype)initWithRootController:(UITabBarController *)controller {
    self = [super init];
    if (self) {
        _rootViewController = controller;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithHexString:@"#FFFFFF"];
    self.iphoneNameLabel.text = [UIDevice currentDevice].name;
    self.iphoneNameLabel.textColor = [UIColor colorWithHexString:@"#101010"];
    self.modelLabel.text = [UIDevice currentDevice].model;
    self.modelLabel.textColor = [UIColor colorWithHexString:@"#101010"];
    self.systemLabel.text = [NSString stringWithFormat:@"%@ %@", [UIDevice currentDevice].systemName, [UIDevice currentDevice].systemVersion];
    self.systemLabel.textColor = [UIColor colorWithHexString:@"#101010"];
    
    [self.stackView
        insertArrangedSubview:[ShapeView new]
        atIndex:1
    ];
    
    self.headerView.backgroundColor = [UIColor colorWithHexString:@"#F9CC78"];
    
    [self setupButtons];
}

-(void) setupButtons{
    self.startButton.layer.cornerRadius = 27.5;
    self.openCvButton.layer.cornerRadius = 27.5;
    
    self.startButton.backgroundColor = [UIColor colorWithHexString:@"#F9CC78"];
    self.openCvButton.backgroundColor = [UIColor colorWithHexString:@"#EE686A"];
}
- (IBAction)openGit:(id)sender {
    [[UIApplication sharedApplication]
        openURL:[NSURL URLWithString:@"https://dssizh.github.io/rsschool-cv/cv"]
        options:@{}
        completionHandler:nil
    ];
}
- (IBAction)goToStart:(id)sender {
    [self.rootViewController willMoveToParentViewController:nil];
    [self.rootViewController.view removeFromSuperview];
    [self.rootViewController removeFromParentViewController];
}

@end
