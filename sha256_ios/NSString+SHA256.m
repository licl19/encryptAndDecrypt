//
//  NSString+SHA256.m
//  cloud_business
//
//  Created by lichanglai on 16/5/9.
//  Copyright © 2016年 lichanglai. All rights reserved.
//

#import "NSString+SHA256.h"
#import <CommonCrypto/CommonHMAC.h>

@implementation NSString (SHA256)

+ (NSString *)sha256:(NSString *)str{
    const char *cstr = [str UTF8String];
    unsigned char digest[CC_SHA256_DIGEST_LENGTH];
    CC_SHA256(cstr,  strlen(cstr), digest);
    NSMutableString* result = [NSMutableString stringWithCapacity:CC_SHA256_DIGEST_LENGTH * 2];
    for(int i = 0; i < CC_SHA256_DIGEST_LENGTH; i++) {
        [result appendFormat:@"%02x", digest[i]];
    }
    return result;
}

@end
