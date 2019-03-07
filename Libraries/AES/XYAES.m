//
//  XYAES.m
//  TestDemo
//
//  Created by Yostar on 2019/3/1.
//  Copyright © 2019 Yostar. All rights reserved.
//

#import "XYAES.h"
#import "NSData+Base64.h"
#import "NSString+Base64.h"
#import "NSData+CommonCryptor.h"

@implementation XYAES

+ (NSString *)encrypt:(NSString *)message key:(NSString *)key{
    NSData *encryptedData = [[message dataUsingEncoding:NSUTF8StringEncoding] AES256EncryptedDataUsingKey:[[key dataUsingEncoding:NSUTF8StringEncoding] SHA256Hash] error:nil];
    NSString *base64EncodedString = [NSString base64StringFromData:encryptedData length:[encryptedData length]];
    return base64EncodedString;
}

+ (NSString *)decrypt:(NSString *)base64EncodedString key:(NSString *)key{
    NSData *encryptedData = [NSData base64DataFromString:base64EncodedString];
    NSData *decryptedData = [encryptedData decryptedAES256DataUsingKey:[[key dataUsingEncoding:NSUTF8StringEncoding] SHA256Hash] error:nil];
    return [[NSString alloc] initWithData:decryptedData encoding:NSUTF8StringEncoding];
}

@end
