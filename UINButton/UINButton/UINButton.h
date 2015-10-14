//
//  UINButton.h
//  widiba
//
//  Created by harald bregu on 13/10/15.
//  Copyright © 2015 Widiba. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface UINButton : UIControl

@property (nonatomic, strong) IBInspectable NSString *text;

// Normal State (Touch Down)
@property (nonatomic, strong) IBInspectable UIColor *normalBorderColor;
@property (nonatomic, strong) IBInspectable UIColor *normalBackground;
@property (nonatomic, strong) IBInspectable UIColor *normalTextColor;
@property (nonatomic, strong) IBInspectable NSString *normalFontName;
@property (nonatomic, assign) IBInspectable CGFloat normalFontSize;
@property (nonatomic, strong) IBInspectable NSString *normalText;
@property (nonatomic, assign) IBInspectable CGFloat normalBorderWidth;

// Highlight State (Touch Up)
@property (nonatomic, strong) IBInspectable UIColor *highlightBorderColor;
@property (nonatomic, strong) IBInspectable UIColor *highlightBackground;
@property (nonatomic, strong) IBInspectable UIColor *highlightTextColor;
@property (nonatomic, strong) IBInspectable NSString *highlightFontName;
@property (nonatomic, assign) IBInspectable CGFloat highlightFontSize;
@property (nonatomic, strong) IBInspectable NSString *highlightText;
@property (nonatomic, assign) IBInspectable CGFloat highlightBorderWidth;

// Disabled State
@property (nonatomic, assign) IBInspectable BOOL enable;
@property (nonatomic, strong) IBInspectable UIColor *disabledBorderColor;
@property (nonatomic, strong) IBInspectable UIColor *disabledBackground;
@property (nonatomic, strong) IBInspectable UIColor *disabledTextColor;
@property (nonatomic, strong) IBInspectable NSString *disabledFontName;
@property (nonatomic, assign) IBInspectable CGFloat disabledFontSize;
@property (nonatomic, strong) IBInspectable NSString *disabledText;
@property (nonatomic, assign) IBInspectable CGFloat disabledBorderWidth;

@end
