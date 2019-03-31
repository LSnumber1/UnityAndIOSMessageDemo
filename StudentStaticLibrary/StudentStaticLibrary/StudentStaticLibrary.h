//
//  StudentStaticLibrary.h
//  StudentStaticLibrary
//
//  Created by ls on 2019/3/14.
//  Copyright © 2019 ls. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 * @protocol  FAT_Delegate
 * @brief   SDK接口回调协议
 */
@protocol FAT_Delegate <NSObject>
@required

- (void)fat_CallBack:(id)response;

@end

@interface StudentStaticLibrary : NSObject

@property (nonatomic, assign) id <FAT_Delegate>delegate;
- (void) showMessage: (NSString *) content;

@end


