//
//  EmptyViewController.h
//  ZQEmptyDataSet
//
//  Created by GTLand on 2018/11/26.
//  Copyright © 2018年 GTLand. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, EmptyType) {
    EmptyTypeDefault,
    EmptyTypeCustom1,
    EmptyTypeCustom2,
    EmptyTypeCustom3,
};

NS_ASSUME_NONNULL_BEGIN

@interface EmptyViewController : UIViewController

@property (nonatomic, assign) EmptyType type;

@end

NS_ASSUME_NONNULL_END
