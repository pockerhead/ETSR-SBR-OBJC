//
//  UIView+Constraints.m
//  EatTrainSleepRepeat
//
//  Created by Artem Balashov on 26/02/2019.
//  Copyright © 2019 pockerhead. All rights reserved.
//

#import "UIView+Constraints.h"

@implementation UIView (Constraints)

-(NSArray<NSLayoutConstraint*>*)anchorWithReturningAnchorsTop:(NSLayoutYAxisAnchor*)top
                                                       bottom:(NSLayoutYAxisAnchor*)bottom
                                                         left:(NSLayoutXAxisAnchor*)left
                                                        right:(NSLayoutXAxisAnchor*)right
                                                  topConstant:(CGFloat)topConstant
                                               bottomConstant:(CGFloat)bottomConstant
                                                 leftConstant:(CGFloat)leftConstant
                                                rightConstant:(CGFloat)rightConstant
                                                widthConstant:(CGFloat)width
                                               heightConstant:(CGFloat)height {
    NSMutableArray<NSLayoutConstraint*>* array =  [[NSMutableArray alloc] initWithArray:@[]];
    
    self.translatesAutoresizingMaskIntoConstraints = NO;
    
    if (top) {
        NSLayoutConstraint *topConstraint = [self.topAnchor constraintEqualToAnchor:top constant:topConstant];
        [array addObject:topConstraint];
    }
    
    if (bottom) {
        NSLayoutConstraint *bottomConstraint = [self.bottomAnchor constraintEqualToAnchor:bottom constant:bottomConstant];
        [array addObject:bottomConstraint];
    }
    
    if (left) {
        NSLayoutConstraint *leftConstraint = [self.leftAnchor constraintEqualToAnchor:left constant:leftConstant];
        [array addObject:leftConstraint];
    }
    
    if (right) {
        NSLayoutConstraint *rightConstraint = [self.rightAnchor constraintEqualToAnchor:right constant:rightConstant];
        [array addObject:rightConstraint];
    }
    
    if (width && width != -1) {
        NSLayoutConstraint *widthConstraint = [self.widthAnchor constraintEqualToConstant:width];
        [array addObject:widthConstraint];
    }
    
    if (height && height != -1) {
        NSLayoutConstraint *heightConstraint = [self.heightAnchor constraintEqualToConstant:height];
        [array addObject:heightConstraint];
    }
    
    for (NSLayoutConstraint *constraint in array) {
        [constraint setActive:YES];
    }
    
    return array;
}

-(NSArray<NSLayoutConstraint*>*)anchorTop:(NSLayoutYAxisAnchor*)top
                                   bottom:(NSLayoutYAxisAnchor*)bottom
                                     left:(NSLayoutXAxisAnchor*)left
                                    right:(NSLayoutXAxisAnchor*)right
                              topConstant:(CGFloat)topConstant
                           bottomConstant:(CGFloat)bottomConstant
                             leftConstant:(CGFloat)leftConstant
                            rightConstant:(CGFloat)rightConstant
                            widthConstant:(CGFloat)width
                           heightConstant:(CGFloat)height {
    return [self anchorWithReturningAnchorsTop:top
                                        bottom:bottom
                                          left:left
                                         right:right
                                   topConstant:topConstant
                                bottomConstant:bottomConstant
                                  leftConstant:leftConstant
                                 rightConstant:rightConstant
                                 widthConstant:width
                                heightConstant:height];
}

-(void)fillSuperview {
    if (self.superview) {
        [self anchorTop:self.superview.topAnchor bottom:self.superview.bottomAnchor left:self.superview.leftAnchor right:self.superview.rightAnchor topConstant:0 bottomConstant:0 leftConstant:0 rightConstant:0 widthConstant: -1 heightConstant: -1];
    }
}

@end
