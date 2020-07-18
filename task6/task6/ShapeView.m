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
        [self setupShapes];
        [self setupAnimation];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
//    [self setupShapes];
}

-(void) setupShapes {
    
    self.axis = UILayoutConstraintAxisHorizontal;
    self.alignment = UIStackViewAlignmentCenter;
    self.spacing = 15;
    self.distribution = UIStackViewDistributionEqualSpacing;
    
    self.circle = [[UIView alloc] init];
    self.square = [[UIView alloc] init];
    self.triangle = [[UIView alloc] init];
    
    self.square.backgroundColor = [UIColor colorWithHexString:@"#29C2D1"];
    self.circle.backgroundColor = [UIColor colorWithHexString:@"#EE686A"];
    self.triangle.backgroundColor = [UIColor colorWithHexString:@"#34C1A1"];
    
    self.circle.layer.cornerRadius = 35;
    
    UIBezierPath *path = [UIBezierPath new];
    [path moveToPoint:CGPointMake(35, 0)];
    [path addLineToPoint:CGPointMake(0, 70)];
    [path addLineToPoint:CGPointMake(70, 70)];
    [path closePath];
    CAShapeLayer *layer = [CAShapeLayer new];
    layer.path = path.CGPath;
    self.triangle.layer.mask = layer;

    self.square.translatesAutoresizingMaskIntoConstraints = false;
    self.triangle.translatesAutoresizingMaskIntoConstraints = false;
    self.circle.translatesAutoresizingMaskIntoConstraints = false;
    self.translatesAutoresizingMaskIntoConstraints = false;
    
    [NSLayoutConstraint activateConstraints:@[

    [self.square.widthAnchor constraintEqualToConstant:70],
    [self.square.heightAnchor constraintEqualToConstant:70],
    
    [self.circle.widthAnchor constraintEqualToConstant:70],
    [self.circle.heightAnchor constraintEqualToConstant:70],
    
    [self.triangle.widthAnchor constraintEqualToConstant:70],
    [self.triangle.heightAnchor constraintEqualToConstant:70],
    
//    [self.topAnchor eq:300],
    [self.widthAnchor constraintEqualToConstant:300],
    [self.heightAnchor constraintEqualToConstant:70]
    
    ]];
    
    [self addArrangedSubview:self.circle];
    [self addArrangedSubview:self.square];
    [self addArrangedSubview:self.triangle];
    
}

- (void) setupAnimation {
    
    CABasicAnimation *scale = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    scale.duration = 0.5;
    scale.fromValue = [NSNumber numberWithDouble:0.9];
    scale.toValue = [NSNumber numberWithDouble:1.1];
    scale.repeatCount = INFINITY;
    scale.autoreverses = true;
    [self.circle.layer addAnimation:scale forKey:nil];
    
    CABasicAnimation *position = [CABasicAnimation animationWithKeyPath:@"position.y"];
    position.duration = 0.5;
    position.fromValue = [NSNumber numberWithInt:35-7];
    position.toValue = [NSNumber numberWithInt:35+7];
    position.repeatCount = INFINITY;
    position.autoreverses = true;
    position.removedOnCompletion = NO;
    [self.square.layer addAnimation:position forKey:nil];
    
    CABasicAnimation *rotation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    rotation.duration = 2;
    rotation.fromValue = [NSNumber numberWithInt:0];
    rotation.toValue = [NSNumber numberWithDouble:M_PI*2];
    rotation.repeatCount = INFINITY;
    rotation.removedOnCompletion = NO;
    [self.triangle.layer addAnimation:rotation forKey:nil];
}

@end
