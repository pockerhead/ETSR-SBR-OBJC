//
//  UIView+Constraints.h
//  EatTrainSleepRepeat
//
//  Created by Artem Balashov on 26/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Constraints)

- (NSArray<NSLayoutConstraint *> *)anchorWithReturningAnchorsTop:(NSLayoutYAxisAnchor *)top
                                                          bottom:(NSLayoutYAxisAnchor *)bottom
                                                            left:(NSLayoutXAxisAnchor *)left
                                                           right:(NSLayoutXAxisAnchor *)right
                                                     topConstant:(CGFloat)topConstant
                                                  bottomConstant:(CGFloat)bottomConstant
                                                    leftConstant:(CGFloat)leftConstant
                                                   rightConstant:(CGFloat)rightConstant
                                                   widthConstant:(CGFloat)width
                                                  heightConstant:(CGFloat)height;

- (NSArray<NSLayoutConstraint *> *)anchorTop:(NSLayoutYAxisAnchor *)top
                                      bottom:(NSLayoutYAxisAnchor *)bottom
                                        left:(NSLayoutXAxisAnchor *)left
                                       right:(NSLayoutXAxisAnchor *)right
                                 topConstant:(CGFloat)topConstant
                              bottomConstant:(CGFloat)bottomConstant
                                leftConstant:(CGFloat)leftConstant
                               rightConstant:(CGFloat)rightConstant
                               widthConstant:(CGFloat)width
                              heightConstant:(CGFloat)height;

- (void)fillSuperview;

@end

NS_ASSUME_NONNULL_END
