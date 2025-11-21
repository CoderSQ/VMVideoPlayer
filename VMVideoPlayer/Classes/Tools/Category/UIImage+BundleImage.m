//
//  UIImage+BundleImage.m
//  VMVideoPlayer
//
//  Created by zsq on 2025/11/21.
//

#import "UIImage+BundleImage.h"

@implementation UIImage (BundleImage)

+ (UIImage *)imageNamedBundle:(NSString *)imageName {
    // 1. 获取 Pod 的主 Bundle（通过当前类的 Bundle 定位）
    NSBundle *podMainBundle = [NSBundle bundleForClass:self.class];
    
    // 2. 拼接资源束（YourPodAssets.bundle）的路径
    NSString *assetsBundlePath = [podMainBundle pathForResource:@"VMVideoPlayerAssets" ofType:@"bundle"];
    if (!assetsBundlePath) {
        NSLog(@"❌ 未找到 VMVideoPlayerAssets.bundle");
        return nil;
    }
    NSBundle *assetsBundle = [NSBundle bundleWithPath:assetsBundlePath];
    
    // 3. 从资源束中加载图片（imageName 是 Imageset 的名称，无需后缀）
    UIImage *image = [UIImage imageNamed:imageName inBundle:assetsBundle compatibleWithTraitCollection:nil];
    
    if (!image) {
        NSLog(@"❌ 未找到图片：%@（请检查 Imageset 名称是否正确）", imageName);
    }
    return image;
}
@end
