//
//  LLCustomButton.m
//  自定义控件-BUTTON
//
//  Created by Leo on 10/9/16.
//  Copyright © 2016 Leo. All rights reserved.
//

#import "LLCustomButton.h"
#import "Masonry.h"

@interface LLCustomButton ()
{
    UIImage *customImage;
    NSString *customTitle;
    actionBlock customBlock;
}
@end

@implementation LLCustomButton

- (instancetype)initWithFrame:(CGRect)frame andImage:(UIImage *)image andTitle:(NSString *)title withCompletionBlock:(actionBlock)block {
    self = [super initWithFrame:frame];
    if (self) {
        customImage = image;
        customTitle = title;
        customBlock = block;
        [self configSubViews];
    }
    return self;
}

- (void)configSubViews {
    
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    imageView.image = customImage;
    [self addSubview:imageView];
    
    UILabel *label = [[UILabel alloc]init];
    label.text = customTitle;
    label.font = [UIFont boldSystemFontOfSize:30];
    [self addSubview:label];
   
    //约束
    __weak UIView *weakSelf = self;
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.equalTo(weakSelf).offset(30);
        make.right.equalTo(weakSelf).offset(-30);
        make.height.equalTo(weakSelf).multipliedBy(0.6);
        make.centerX.equalTo(weakSelf.mas_centerX);
    }];
    
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(imageView.mas_bottom);
        make.height.equalTo(weakSelf).multipliedBy(0.3);
        make.centerX.equalTo(imageView.mas_centerX);
    }];
    
}

- (NSString *)title {
    
    return customTitle;
}

- (UIImage *)image {
    
    return customImage;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    if (customBlock) {
        customBlock();
    }
}

@end
