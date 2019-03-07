//
//  XYUtility.h
//  TestDemo
//
//  Created by Yostar on 2019/3/1.
//  Copyright © 2019 Yostar. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XYUtility : NSObject

//获取UserDefaults
+ (id)getUserDefaultsForKey:(NSString *)key;

//设置UserDefaults
+ (void)setUserDefaults:(id)object forKey:(NSString *)key;

// 邮箱账号的有效性判断
+ (BOOL)isEmailNumber:(NSString *)emailNum;

//验证手机号
+ (BOOL)isValidatePhone:(NSString *)phone;

//匹配密码格式
+ (BOOL)isValidatePassword:(NSString *)password;

//获取系统版本号
+ (NSString *)getiPhoneSystemVersion;

//获取设备型号
+ (NSString *)getiPhoneDeviceVersion;

//获取App版本信息
+ (NSString *)appBundleId;
+ (NSString *)appVersion;
+ (NSString *)appBuildVersion;

//随机字符串，用于加密
+ (NSString *)getRandomKey;

//调用系统邮件发邮件
+ (void)gotoEmail:(NSString *)emailAccount;

@end

NS_ASSUME_NONNULL_END
