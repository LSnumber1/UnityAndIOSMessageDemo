//
//  Bridge.h
//  StudentStaticLibrary
//
//  Created by ls on 2019/3/25.
//  Copyright © 2019 ls. All rights reserved.
//

#ifndef Bridge_h
#define Bridge_h

@interface Bridge : NSObject <FAT_Delegate>
+ (Bridge *)sharedInstance;

@end
#endif /* Bridge_h */
