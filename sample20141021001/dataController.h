//
//  dataController.h
//  sample20141021001
//
//  Created by dev1 on 2014. 10. 21..
//  Copyright (c) 2014년 Chan-yeong, Jeong. All rights reserved.
//

#import <Foundation/Foundation.h>
@class lego;

@interface dataController : NSObject

- (NSUInteger) dataCount;
- (lego *) atIndex: (NSUInteger) index;

- (void)addData: (NSString *)title summary: (NSString *)summary locationUrl: (NSString *)locationUrl;
@end
