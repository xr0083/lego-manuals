//
//  lego.h
//  sample20141021001
//
//  Created by dev1 on 2014. 10. 21..
//  Copyright (c) 2014년 Chan-yeong, Jeong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface lego : NSObject
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic, copy) NSString *locationUrl;

- (id)initTitle: (NSString *)title summary: (NSString *)summary locationUrl: (NSString *)locationUrl;

@end
