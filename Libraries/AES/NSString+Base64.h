//
//  NSString+Base64.h
//  TestDemo
//
//  Created by Yostar on 2019/3/1.
//  Copyright © 2019 Yostar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Base64)

+ (NSString *)base64StringFromData:(NSData *)data length:(NSUInteger)length;

@end

NS_ASSUME_NONNULL_END
