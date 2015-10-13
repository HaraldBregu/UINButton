//
//  UINButton.h
//  widiba
//
//  Created by harald bregu on 13/10/15.
//  Copyright © 2015 Widiba. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINButton : UIControl

// Normal State (Touch Down)
@property (nonatomic, strong) IBInspectable UIColor *normalBorderColor;
@property (nonatomic, strong) IBInspectable UIColor *normalBackground;
@property (nonatomic, strong) IBInspectable UIColor *normalTextColor;

// Highlight State (Touch Up)
@property (nonatomic, strong) IBInspectable UIColor *highlightBorderColor;
@property (nonatomic, strong) IBInspectable UIColor *highlightBackground;
@property (nonatomic, strong) IBInspectable UIColor *highlightTextColor;

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) IBInspectable NSString *text;

@end
