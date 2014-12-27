//
//  lego.m
//  sample20141021001
//
//  Created by dev1 on 2014. 10. 21..
//  Copyright (c) 2014년 Chan-yeong, Jeong. All rights reserved.
//

#import "lego.h"

@implementation lego
- (id)initTitle: (NSString *)title summary: (NSString *)summary locationUrl: (NSString *)locationUrl {
    self = [super init];
    if (self) {
        _title = title;
        _summary = summary;
        _locationUrl = locationUrl;
        
        return self;
    }
    return nil;
}

@end
