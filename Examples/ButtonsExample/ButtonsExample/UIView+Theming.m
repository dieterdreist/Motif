//
//  UIView+Theming.m
//  ButtonsExample
//
//  Created by Eric Horacek on 12/27/14.
//  Copyright (c) 2014 Automatic Labs, Inc. All rights reserved.
//

#import <AUTTheming/AUTTheming.h>
#import <AUTTheming/AUTValueTransformers.h>
#import "UIView+Theming.h"
#import "AUTThemeSymbols.h"

@implementation UIView (Theming)

+ (void)load
{
    [self aut_registerThemeProperty:AUTThemeProperties.borderWidth requiringValueOfClass:[NSNumber class] applier:^(NSNumber *width, UIView *view) {
        view.layer.borderWidth = width.floatValue;
    }];

    [self aut_registerThemeProperty:AUTThemeProperties.borderColor valueTransformerName:AUTColorFromStringTransformerName applier:^(UIColor *color, UIView *view) {
        view.layer.borderColor = color.CGColor;
    }];
    
    [self aut_registerThemeProperty:AUTThemeProperties.cornerRadius requiringValueOfClass:[NSNumber class] applier:^(NSNumber *cornerRadius, UIView *view) {
        view.layer.cornerRadius = cornerRadius.floatValue;
    }];
    
    [self aut_registerThemeProperty:AUTThemeProperties.backgroundColor valueTransformerName:AUTColorFromStringTransformerName applier:^(UIColor *color, UIView *view) {
        view.backgroundColor = color;
    }];
}

@end
