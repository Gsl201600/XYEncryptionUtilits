//
//  XYUtility.m
//  TestDemo
//
//  Created by Yostar on 2019/3/1.
//  Copyright © 2019 Yostar. All rights reserved.
//

#import "XYUtility.h"
#import <UIKit/UIKit.h>
#import <sys/utsname.h>

static NSString *const RANDOM_RULES = @"QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm1234567890!@#$%^&*()";
NSInteger const RANDOM_SIZE = 8;

@implementation XYUtility

//获取UserDefaults
+ (id)getUserDefaultsForKey:(NSString *)key{
    id userDefaults = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    return userDefaults;
}

//设置UserDefaults
+ (void)setUserDefaults:(id)object forKey:(NSString *)key{
    [[NSUserDefaults standardUserDefaults] setObject:object forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

// 邮箱账号的有效性判断
+ (BOOL)isEmailNumber:(NSString *)emailNum{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    return [emailTest evaluateWithObject:emailNum];
}

//验证手机号
+ (BOOL)isValidatePhone:(NSString *)phone{
    NSString *phoneRegex = @"1[3|5|7|8|][0-9]{9}";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneRegex];
    return [phoneTest evaluateWithObject:phone];
}

//匹配密码格式
+ (BOOL)isValidatePassword:(NSString *)password{
    NSString * passwordRegex = @"[a-zA-Z0-9]{6,20}";
    NSPredicate * passwordTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", passwordRegex];
    return [passwordTest evaluateWithObject:password];
}

//获取系统版本号
+ (NSString *)getiPhoneSystemVersion{
    NSString * systemVer = [[UIDevice currentDevice] systemVersion];
    return systemVer;
}

//获取设备型号
+ (NSString *)getiPhoneDeviceVersion{
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString * platform = [NSString stringWithCString:systemInfo.machine encoding:NSASCIIStringEncoding];
    return platform;
}

//获取App版本信息
+ (NSString *)appBundleId{
    NSDictionary *plistDic = [[NSBundle mainBundle] infoDictionary];
    NSString *version = [plistDic objectForKey:@"CFBundleIdentifier"];
    return version;
}

+ (NSString *)appVersion{
    NSDictionary *plistDic = [[NSBundle mainBundle] infoDictionary];
    NSString *version = [plistDic objectForKey:@"CFBundleShortVersionString"];
    return version;
}

+ (NSString *)appBuildVersion{
    NSDictionary *plistDic = [[NSBundle mainBundle] infoDictionary];
    NSString *plistBuild = [plistDic objectForKey:@"CFBundleVersion"];
    return plistBuild;
}

//随机字符串，用于加密
+ (NSString *)getRandomKey{
    NSMutableString *generateRandStr = [[NSMutableString alloc] init];
    for(NSInteger i = 0; i < RANDOM_SIZE; i++) {
        int randNum = arc4random() % RANDOM_RULES.length;
        NSString *subString = [RANDOM_RULES substringWithRange:NSMakeRange(randNum, 1)];
        [generateRandStr appendString:subString];
    }
    return generateRandStr;
}

//调用系统邮件发邮件
+ (void)gotoEmail:(NSString *)emailAccount{
    NSString * recipients = [NSString stringWithFormat:@"mailto:%@", emailAccount];
    
    NSString * email = [recipients stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:email]];
}

@end
