//
//  UINavigationController+Extras.m
//  SquaresFlipNavigationExample
//
//  Created by Andrés Brun on 8/8/13.
//  Copyright (c) 2013 Andrés Brun. All rights reserved.
//

#import "UINavigationController+Extras.h"

@implementation UINavigationController (Extras)


- (float) calculateYPosition
{
    float yPosition=0;
    
    UIInterfaceOrientation interfaceOrientation = [[UIApplication sharedApplication] statusBarOrientation];
    
    if (!self.navigationBarHidden) {
        if (UIInterfaceOrientationIsPortrait(interfaceOrientation)){
            yPosition += self.navigationBar.frame.size.height;
        }else{
            yPosition += self.navigationBar.frame.size.width;
        }
    }
    
    if (![UIApplication sharedApplication].statusBarHidden){
        if (UIInterfaceOrientationIsPortrait(interfaceOrientation)){
            yPosition += [UIApplication sharedApplication].statusBarFrame.size.height;
        }else{
            yPosition += [UIApplication sharedApplication].statusBarFrame.size.width;
        }
    }
    
    return yPosition;
    
}

@end
