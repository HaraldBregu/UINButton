//
//  UINButton.m
//  widiba
//
//  Created by harald bregu on 13/10/15.
//  Copyright © 2015 Widiba. All rights reserved.
//

#import "UINButton.h"

@interface UINButton () {
    
}
@end


@implementation UINButton


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    
    _titleLabel = [[UILabel alloc] initWithFrame:self.bounds];
    [self addSubview:_titleLabel];

    [self addTarget:self action:@selector(buttonTouchDown) forControlEvents:UIControlEventTouchDown];
    [self addTarget:self action:@selector(buttonTouchUpInside) forControlEvents:UIControlEventTouchUpInside];
    [self addTarget:self action:@selector(buttonTouchUpInside) forControlEvents:UIControlEventTouchUpOutside];
}

- (void)updateConstraints {

    _titleLabel.translatesAutoresizingMaskIntoConstraints = NO;

    [self addConstraints:@[
                           [NSLayoutConstraint constraintWithItem:_titleLabel attribute:NSLayoutAttributeTopMargin relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTopMargin multiplier:1.0 constant:0.0],
                           [NSLayoutConstraint constraintWithItem:_titleLabel attribute:NSLayoutAttributeLeadingMargin relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeadingMargin multiplier:1.0 constant:0.0],
                           [NSLayoutConstraint constraintWithItem:_titleLabel attribute:NSLayoutAttributeBottomMargin relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottomMargin multiplier:1.0 constant:0.0],
                           [NSLayoutConstraint constraintWithItem:_titleLabel attribute:NSLayoutAttributeTrailingMargin relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTrailingMargin multiplier:1.0 constant:0.0]
                           ]];
    [super updateConstraints];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel.text = _text;

    self.layer.cornerRadius = 3.0f;
    self.layer.borderWidth = 1.0f;
    self.layer.borderColor = _normalBorderColor.CGColor;
    self.backgroundColor = _normalBackground;
    _titleLabel.textColor = _normalTextColor;
}

- (void)buttonTouchDown {
    self.layer.cornerRadius = 3.0f;
    self.layer.borderWidth = 1.0f;
    self.layer.borderColor = _highlightBorderColor.CGColor;
    self.backgroundColor = _highlightBackground;
    _titleLabel.textColor = _highlightTextColor;
}

- (void)buttonTouchUpInside {
    [self setNeedsLayout];
}

@end
