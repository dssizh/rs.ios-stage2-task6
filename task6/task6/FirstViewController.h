//
//  FirstViewController.h
//  task6
//
//  Created by Dmitriy Sutygin on 23.06.2020.
//  Copyright © 2020 Dmitriy Sutygin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@interface FirstViewController : UIViewController

@property (nonatomic, copy, readonly) NSArray <UIViewController*> *viewControllers;
@property (nonatomic, assign) UIViewController *selectedViewController;

//- (instancetype)initWithChildControllers:(NSArray<UIViewController*> *) viewControllers;

@end

NS_ASSUME_NONNULL_END
