//
//  DES3Util.h
//  DES3
//
//  Created by lichanglai on 16/7/1.
//  Copyright © 2016年 lichanglai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DES3Util : NSObject
// 加密方法
+ (NSString*)encrypt:(NSString*)plainText;

// 解密方法
+ (NSString*)decrypt:(NSString*)encryptText;
@end
