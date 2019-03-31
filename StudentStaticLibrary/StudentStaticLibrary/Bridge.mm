//
//  Bridge.c
//  StudentStaticLibrary
//
//  Created by ls on 2019/3/22.
//  Copyright © 2019 ls. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "StudentStaticLibrary.h"
#import "Bridge.h"

static id object;

@implementation Bridge


+ (Bridge *)sharedInstance {
    static dispatch_once_t oneceToken;
    dispatch_once(&oneceToken, ^{
        object = [[Bridge alloc] init];
    });

    return object;
}

- (void)fat_CallBack:(id)response {
    NSLog(@"callback： %@",response);
}


- (void)setLinstener{
    object = self;
}

@end


#if defined (__cplusplus)
extern "C" {
#endif
    
    static Bridge *bridge;
    
    void UnitySendMessage( const char * className, const char * methodName, const char * param );

    void _showMessage(char* content){
       
        NSLog(@"mm文件响应了");
        if(bridge==NULL)
        {
            bridge = [Bridge sharedInstance];
        }
        [bridge setLinstener]; 
        
        StudentStaticLibrary *library = [[StudentStaticLibrary alloc] init];
        library.delegate = object;
        NSString *string = [[NSString alloc] initWithUTF8String:content];
        [library showMessage: string];
    
    }
    void _showMessage2(){
        NSLog(@"mm文件响应了");
        StudentStaticLibrary *library = [[StudentStaticLibrary alloc] init];
        [library showMessage: @"temp"];
        
    }
    void showMessage3(){
        NSLog(@"mm文件响应了3");
        StudentStaticLibrary *library = [[StudentStaticLibrary alloc] init];
        [library showMessage: @"temp"];
        
    }
    
    char *MakeStringCopy(const char *string) {
        if (NULL == string) {
            return NULL;
        }
        char *res = (char *)malloc(strlen(string) + 1);
        strcpy(res, string);
        return res;
    }
    
    char *_lableName(char *str){
        UnitySendMessage("Main Camera","unityGet", str);
        return MakeStringCopy(str);
    }
    
    
#if defined (__cplusplus)
}
#endif


