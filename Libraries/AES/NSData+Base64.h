//
//  NSData+Base64.h
//  TestDemo
//
//  Created by Yostar on 2019/3/1.
//  Copyright © 2019 Yostar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (Base64)

+ (NSData *)base64DataFromString:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
