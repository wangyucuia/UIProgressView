//
//  UIProgressView+Radius.m
//  UIProgressView
//
//  Created by 王玉翠 on 16/8/12.
//  Copyright © 2016年 王玉翠. All rights reserved.
//

#import "UIProgressView+Radius.h"

@implementation UIProgressView (Radius)

-(void)setRadiusTrackColor:(UIColor *)tracColor{
    
    UIImage *trackImage = [self imageWithColor:tracColor cornerRadius:self.frame.size.height / 2.0];
    
    [self setTrackImage:trackImage];
    
}

-(void)setRadiusProgressColor:(UIColor *)progressColor{
    
    UIImage *progressImage = [self imageWithColor:progressColor cornerRadius:self.frame.size.height / 2.0];
    [self setProgressImage:progressImage];
    
    
    
}

-(void)setRadiusTrackColor:(UIColor *)tracColor
             progressColor:(UIColor *)progressColor{
    
    [self setRadiusTrackColor:tracColor];
    [self setRadiusProgressColor:progressColor];
    
    
}

//最小尺寸 ---1px
static CGFloat edgeSizeWithRadius(CGFloat cornerRadius){
    
    return cornerRadius * 2;

}



-(UIImage *)imageWithColor:(UIColor *)color
              cornerRadius:(CGFloat )cornerRadius{
    CGFloat minEdgeSize = edgeSizeWithRadius(cornerRadius);
    CGRect redct = CGRectMake(0, 0, minEdgeSize, minEdgeSize);
    UIBezierPath *roundedRect = [UIBezierPath bezierPathWithRoundedRect:redct cornerRadius:cornerRadius];
    roundedRect.lineWidth = 0;
    UIGraphicsBeginImageContextWithOptions(redct.size, NO, 0.0f);
    [color setFill];
    [roundedRect fill];
    [roundedRect stroke];
    [roundedRect addClip];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return [image resizableImageWithCapInsets:UIEdgeInsetsMake(cornerRadius, cornerRadius, cornerRadius, cornerRadius)];
    

    
    
}


@end
