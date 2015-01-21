//
//  TestModel.h
//  Demo
//
//  Created by Dal Rupnik on 21/01/15.
//  Copyright (c) 2015 arvystate.net. All rights reserved.
//

#import "JSONModel.h"

@interface TestModel : JSONModel

@property (nonatomic, copy) NSString *testString;
@property (nonatomic, assign) NSInteger testInteger;
@property (nonatomic, copy) NSString *testString2;

@end
