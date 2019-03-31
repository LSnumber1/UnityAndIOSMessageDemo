//
//  StudentStaticLibrary.m
//  StudentStaticLibrary
//
//  Created by ls on 2019/3/14.
//  Copyright © 2019 ls. All rights reserved.
//

#import "StudentStaticLibrary.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@implementation StudentStaticLibrary

- (void)showMessage:(NSString *)content {
    NSLog(@"Unity 传过来的参数为：%@",content);
    if ([[self delegate] respondsToSelector:@selector(fat_CallBack:)]) {
        [[self delegate] fat_CallBack:@"回调"];
    }
}

@end

