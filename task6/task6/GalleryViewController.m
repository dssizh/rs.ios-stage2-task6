//
//  SecondViewController.m
//  task6
//
//  Created by Dmitriy Sutygin on 24.06.2020.
//  Copyright © 2020 Dmitriy Sutygin. All rights reserved.
//

#import "GalleryViewController.h"
#import "UIColor+UIColor_category.h"

@interface GalleryViewController ()

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) NSArray<NSArray *> *imagesNames;

@end

@implementation GalleryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithHexString:@"#FFFFFF"];
    [self setupHeaderView];
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
    headerText.text = @"Gallery";
    headerText.font = [UIFont systemFontOfSize:18.0 weight:UIFontWeightSemibold];
    headerText.textColor = [UIColor colorWithHexString:@"#101010"];
    
    [headerView addSubview:headerText];
    headerText.translatesAutoresizingMaskIntoConstraints = false;
    [NSLayoutConstraint activateConstraints:@[
        [headerText.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor],
        [headerText.centerYAnchor constraintEqualToAnchor:headerView.centerYAnchor constant:20]
    ]];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
