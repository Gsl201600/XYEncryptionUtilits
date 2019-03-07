//
//  ViewController.m
//  XYEncryptionUtilits
//
//  Created by Yostar on 2019/3/7.
//  Copyright © 2019 Yostar. All rights reserved.
//

#import "ViewController.h"
#import "XYUtilits.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *oriStr = @"123Test";
    //    [self testMD5:oriStr];
    //    [self testRSA:oriStr];
    [self testEDS:oriStr];
    [self testAES:oriStr];
}

- (void)testMD5:(NSString *)oriStr{
    NSString *currentStr = [XYMD5 md5:oriStr];
    NSLog(@"currentStr::%@", currentStr);
}

- (void)testRSA:(NSString *)oriStr{
    NSString *RSA_Public_key = @"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCxuWhp6EgQfrrSBtxlBwbU35lhjC67X0Y1KrhqolIfYo3/yWV1eryYVUhk5xeHsbKg9RHD9TpIZRUWIW5a8MrMBcgr1A/dgIHi2EM28drH4JRTmkTLVHReggFbb046k0ISpLW3XVW0jHB3/z3S1c/NT9V63SQK6WJ65/YP5xISNQIDAQAB";
    NSString *RSA_Privite_key = @"MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBALG5aGnoSBB+utIG3GUHBtTfmWGMLrtfRjUquGqiUh9ijf/JZXV6vJhVSGTnF4exsqD1EcP1OkhlFRYhblrwyswFyCvUD92AgeLYQzbx2sfglFOaRMtUdF6CAVtvTjqTQhKktbddVbSMcHf/PdLVz81P1XrdJArpYnrn9g/nEhI1AgMBAAECgYBEbsMAvLs69sFS6+djU1BTGYIC6Kp55ZawFDIMhVIf2aAZ1N+nW8pQ0c3dZIpP6qGAjrz3em6lv55d9iN7Cura/g57Rk4S3SRo5u4hWUd16NeIVP+HfreKIgZ6jwKQTfXt2KzDuIAHudvwT2UJBePgIIDQoKMEq4khtFiRGS1UgQJBAN/KpSOiRiGup8h/Iqespwfxyrqn5/4iyw1tpJCWzHddP7nJGpYmOL+ELWs/pReYclAOqH9ZIzOT2K8ZLt6yBOECQQDLTXZowK8wFgMudAE5TStC/zl3TAKMu/Gu5wlXSMoa+nwSy/FSIQZyypGeHR2X8QhbZ1Qz+uBCJm7gEGOWMWPVAkEAp5ajsFm3V0XqE/VRSGu88fAaN0nCK8h2cunm0Ph8ye6k6EY3iLW6zYD4WlZhFZhuEpHHkQZ5nAhdvlKHjPGXQQJAYOtF1rx9B/SGgb/F0ZZrWF4p/ChdUtBKcHIt7tGBoAjn22IkYl3iIBlYAEOrFwNOU5zX9IvWG1MNKn5Fq5VSHQJBAJG5xSY0IKzXWDsGnPIa9XlSTv1zl7RCGNDo7O1zh+5J/kjDpU9M2fIXEtzvGYHiOffz9FBh5ka69JJNFWoWAiw=";
    NSString *currentStr = [XYRSA encryptString:oriStr publicKey:RSA_Public_key];
    NSLog(@"currentStr::%@", currentStr);
    NSString *str = [XYRSA decryptString:currentStr privateKey:RSA_Privite_key];
    NSLog(@"Str::%@", str);
}

- (void)testEDS:(NSString *)oriStr{
    NSString *randomStr = [XYUtility getRandomKey];
    NSLog(@"randomStr::%@", randomStr);
    NSString *currentStr = [XYDES encryptUseDES:oriStr key:randomStr];
    NSLog(@"currentStr::%@", currentStr);
    NSString *str = [XYDES decryptUseDES:currentStr key:randomStr];
    NSLog(@"Str::%@", str);
}

- (void)testAES:(NSString *)oriStr{
    NSString *randomStr = [XYUtility getRandomKey];
    NSLog(@"randomStr::%@", randomStr);
    NSString *currentStr = [XYAES encrypt:oriStr key:randomStr];
    NSLog(@"currentStr::%@", currentStr);
    NSString *str = [XYAES decrypt:currentStr key:randomStr];
    NSLog(@"Str::%@", str);
}


@end
