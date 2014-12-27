//
//  dataController.m
//  sample20141021001
//
//  Created by dev1 on 2014. 10. 21..
//  Copyright (c) 2014년 Chan-yeong, Jeong. All rights reserved.
//

#import "dataController.h"
#import "lego.h"

@interface dataController ()
@property (nonatomic, readonly) NSMutableArray *dataList;

- (void) initDefaultData;
@end

@implementation dataController
- (id) init {
    self = [super init];
    
    if (self) {
        _dataList = [[NSMutableArray alloc] init];
        [self initDefaultData];
        return self;
    }
    return nil;
}

//리스트 로딩시 기본값으로 만든다...
// 여기서 DB에 연결해 리스트 값을 가져오도록 변경처리한다...
- (void) initDefaultData {
    [self addData:@"title1" summary:@"summary1" locationUrl:@"locationUrl1"];
    [self addData:@"title2" summary:@"summary2" locationUrl:@"locationUrl2"];
}

- (void)addData:(NSString *)title summary:(NSString *)summary locationUrl:(NSString *)locationUrl {
    lego *newData = [[lego alloc] initTitle:title summary:summary locationUrl:locationUrl];
    
    [self.dataList addObject:newData];
}

- (NSUInteger)dataCount {
    return [self.dataList count];
}

- (lego *)atIndex:(NSUInteger)index {
    return [self.dataList objectAtIndex:index];
}
@end
