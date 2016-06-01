//
//  YYNibView.m
//  SBDemo
//
//  Created by 昭荣伊 on 16/6/1.
//  Copyright © 2016年 昭荣伊. All rights reserved.
//

#import "YYNibView.h"

@implementation YYNibView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self initSubviews];
        
        if (CGRectIsEmpty(frame)) {
            self.frame = _contentView.bounds;
        } else {
            _contentView.frame = self.bounds;
        }
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self initSubviews];
        _contentView.frame = self.bounds;
    }
    return self;
}

- (void)setFrame:(CGRect)frame {
    [super setFrame:frame];
    _contentView.frame = self.bounds;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor {
    [super setBackgroundColor:backgroundColor];
    _contentView.backgroundColor = backgroundColor;
}

- (void)initSubviews {
    NSString *className = NSStringFromClass([self class]);
    _contentView = [[NSBundle mainBundle] loadNibNamed:className owner:self options:nil].firstObject;
    _contentView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self addSubview:_contentView];
    // Fix backgroundColor
    self.backgroundColor = _contentView.backgroundColor;
}

@end
