//
//  XYMD5.m
//  TestDemo
//
//  Created by Yostar on 2019/3/1.
//  Copyright © 2019 Yostar. All rights reserved.
//

#import "XYMD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation XYMD5

+ (NSString *)md5:(NSString *)str{
    if (str == nil) {
        return nil;
    }
    const char *cStr = [str UTF8String];
    unsigned char result[32];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result);
    NSString *md5Eiphertext = [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",result[0],result[1],result[2],result[3],result[4],result[5],result[6],result[7],result[8],result[9],result[10],result[11],result[12],result[13],result[14],result[15]];
    return md5Eiphertext;
}

@end
