//
//  LLCustomButton.h
//  自定义控件-BUTTON
//
//  Created by Leo on 10/9/16.
//  Copyright © 2016 Leo. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^actionBlock)();

@interface LLCustomButton : UIView
@property (strong, nonatomic,readonly) NSString *title;
@property (strong, nonatomic,readonly) UIImage *image;
- (instancetype)initWithFrame:(CGRect)frame andImage:(UIImage *)image andTitle:(NSString *)title withCompletionBlock:(actionBlock)block;
@end
