//
//  ShapeView.m
//  task6
//
//  Created by Dmitriy Sutygin on 25.06.2020.
//  Copyright © 2020 Dmitriy Sutygin. All rights reserved.
//

#import "ShapeView.h"
#import "UIColor+UIColor_category.h"

@interface ShapeView ()
@property (nonatomic, strong) UIView *square;
@property (nonatomic, strong) UIView *circle;
@property (nonatomic, strong) UIView *triangle;
@property (nonatomic, strong) UIStackView *stackView;
@end

@implementation ShapeView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = UIColor.blackColor;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
}

-(void) setupShapes {
    
    self.stackView = [UIStackView new];
    self.stackView.axis = UILayoutConstraintAxisHorizontal;
    self.stackView.alignment = UIStackViewAlignmentCenter;
    
    self.square = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 70)];
    self.square.backgroundColor = [UIColor colorWithHexString:@"#34C1A1"];
    
    [self.stackView addArrangedSubview:self.square];
    
}

@end
