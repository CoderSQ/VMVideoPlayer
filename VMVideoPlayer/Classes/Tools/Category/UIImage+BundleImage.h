//
//  UIImage+BundleImage.h
//  VMVideoPlayer
//
//  Created by zsq on 2025/11/21.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (BundleImage)
+ (UIImage *)imageNamedBundle:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
