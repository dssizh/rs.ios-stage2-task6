//
//  GalleryTabBarViewController.m
//  task6
//
//  Created by Dmitriy Sutygin on 25.06.2020.
//  Copyright © 2020 Dmitriy Sutygin. All rights reserved.
//

#import "GalleryTabBarViewController.h"
#import "InfoViewController.h"
#import "GalleryViewController.h"
#import "HomeViewController.h"

@interface GalleryTabBarViewController ()

@end

@implementation GalleryTabBarViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self setupControllers];
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void) setupControllers {
    
    NSMutableArray *tabBarControllers = [NSMutableArray new];
    InfoViewController *infoViewController = [InfoViewController new];
    infoViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"" image:[UIImage imageNamed:@"info_unselected"] tag:0];
    [tabBarControllers addObject:infoViewController];
    
    GalleryViewController *galleryViewController = [GalleryViewController new];
    galleryViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"" image:[UIImage imageNamed:@"gallery_unselected"] tag:1];
    [tabBarControllers addObject:galleryViewController];
    
    HomeViewController *homeViewController = [[HomeViewController alloc] initWithRootController:self];
    homeViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"" image:[UIImage imageNamed:@"home_unselected"] tag:2];
    [tabBarControllers addObject:homeViewController];
        
    self.viewControllers = tabBarControllers;
    
}

@end
