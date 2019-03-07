//
//  XYDES.h
//  TestDemo
//
//  Created by Yostar on 2019/3/1.
//  Copyright © 2019 Yostar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYDES : NSObject

//加密方法
+(NSString *) encryptUseDES:(NSString *)plainText key:(NSString *)key;
//解密方法
+(NSString *)decryptUseDES:(NSString *)cipherText key:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
