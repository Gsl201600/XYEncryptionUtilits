//
//  XYAES.h
//  TestDemo
//
//  Created by Yostar on 2019/3/1.
//  Copyright © 2019 Yostar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYAES : NSObject

+ (NSString *)encrypt:(NSString *)message key:(NSString *)key;
+ (NSString *)decrypt:(NSString *)base64EncodedString key:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
