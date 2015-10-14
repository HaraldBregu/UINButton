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
@property (nonatomic, strong) UILabel *titleLabel;

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
    
    _enable = YES;
    _normalBorderWidth = 1.0f;
    _highlightBorderWidth = 1.0f;
    
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
    
    if (_enable) {
        self.layer.cornerRadius = 3.0f;
        self.layer.borderWidth = _normalBorderWidth;
        self.layer.borderColor = _normalBorderColor.CGColor;
        self.backgroundColor = _normalBackground;
        
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.text = (_text == nil) ? _normalText :_text;
        _titleLabel.textColor = _normalTextColor;
        
        (_normalFontName != nil) ? _titleLabel.font = [UIFont fontWithName:_normalFontName size:_normalFontSize] : nil;
    } else {
        self.layer.cornerRadius = 3.0f;
        self.layer.borderWidth = _disabledBorderWidth;
        self.layer.borderColor = _disabledBorderColor.CGColor;
        self.backgroundColor = _disabledBackground;
        
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.text = (_text == nil) ? _disabledText : _text;
        _titleLabel.textColor = _disabledTextColor;
        (_disabledFontName != nil) ? _titleLabel.font = [UIFont fontWithName:_disabledFontName size:_disabledFontSize] : nil;
    }
}

- (void)buttonTouchDown {
    self.layer.cornerRadius = 3.0f;
    self.layer.borderWidth = _highlightBorderWidth;
    self.layer.borderColor = _highlightBorderColor.CGColor;
    self.backgroundColor = _highlightBackground;
    
    _titleLabel.text = (_text == nil) ? _highlightText : _text;
    _titleLabel.textColor = _highlightTextColor;
    (_highlightFontName != nil) ? _titleLabel.font = [UIFont fontWithName:_highlightFontName size:_highlightFontSize] : nil;
}

- (void)buttonTouchUpInside {
    [self setNeedsLayout];
}

- (void)setEnable:(BOOL)enable {
    _enable = enable;
    self.enabled = enable;
    [self setNeedsLayout];
}

- (void)setTitleLabel:(UILabel *)titleLabel {
    _titleLabel = titleLabel;
    //[self setNeedsLayout];
}

@end
