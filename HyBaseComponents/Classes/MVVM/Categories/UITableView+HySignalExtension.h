//
//  UITableView+HySignalExtension.h
//  DemoCode
//
//  Created by Hy on 2017/11/27.
//  Copyright © 2017 Hy. All rights reserved.
//


#import <UIKit/UIKit.h>
#import <ReactiveObjC/ReactiveObjC.h>
#import <HyCategoriess/HyCategories.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (HySignalExtension)

@property (nonatomic,strong,readonly) RACSignal *hy_tableViewDataSignal;

@end

NS_ASSUME_NONNULL_END
