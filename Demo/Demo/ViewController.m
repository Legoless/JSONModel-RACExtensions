//
//  ViewController.m
//  Demo
//
//  Created by Dal Rupnik on 16/01/15.
//  Copyright (c) 2015 arvystate.net. All rights reserved.
//

#import "ViewController.h"
#import "TestModel.h"

#import <JSONModel-RACExtensions/RACJSONModel.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //
    // A couple of test objects
    //
    
    NSDictionary *object1 = @{ @"testString" : @"test1", @"testInteger" : @34, @"testString2" : @"test123" };
    
    NSDictionary *object2 = @{ @"testString" : @"test2", @"testInteger" : @345, @"testString2" : @"test123" };
    
    NSDictionary *object3 = @{ @"testString" : @"test3", @"testInteger" : @3456, @"testString2" : @"test123" };
    
    NSDictionary *object4 = @{ @"testString" : @"test4", @"testInteger" : @34567, @"testString2" : @"test123" };
    
    NSDictionary *object5 = @{ @"testString" : @"test5", @"testInteger" : @345678, @"testString2" : @"test123" };
    
    //
    // Test array
    //
    
    NSArray *testArray = @[ object1, object2, object3, object4, object5 ];
    
    //
    // Traversing hierarchy
    //
    
    NSDictionary *traverseObject1 = @{ @"data" : testArray };
    
    NSDictionary *traverseObject2 = @{ @"data" : object2 };
    
    NSDictionary *traverseObject3 = @{ @"data" : @{ @"sometest" : @"testdata" }, @"data2" : object3 };
    
    NSDictionary *traverseObject4 = @{ @"data" : @{ @"sometest" : @"testdata" }, @"data2" : testArray };
    
    NSDictionary *traverseObject5 = @{ @"data" : @{ @"sometest" : @"testdata" } };
    
    //
    // Normal parse for object
    //
    
    [[TestModel parseSignalForDictionary:object1] subscribeNext:^(TestModel *x) {
        NSLog(@"Model: %@", x);
    } error:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    //
    // Should fail for fake object
    //
    
    [[TestModel parseSignalForDictionary:@{}] subscribeNext:^(TestModel *x) {
        NSLog(@"Model: %@", x);
    } error:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    //
    // Normal parse for array
    //
    
    [[TestModel parseSignalForArray:testArray] subscribeNext:^(NSArray *x) {
        NSLog(@"Models: %@", x);
    } error:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    //
    // Should fail for fake array
    //
    
    [[TestModel parseSignalForArray:@[ @{ @"fake" : @"" }]] subscribeNext:^(TestModel *x){
        NSLog(@"Model: %@", x);
    } error:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    NSLog(@"--- SMART FUNCTIONS ---");
    
    //
    // Normal parse for object
    //
    
    [[TestModel parseSignalForModelObject:object1] subscribeNext:^(TestModel *x) {
        NSLog(@"Model: %@", x);
    } error:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    //
    // Should fail for fake object
    //
    
    [[TestModel parseSignalForModelObject:@{}] subscribeNext:^(TestModel *x) {
        NSLog(@"Model: %@", x);
    } error:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    //
    // Normal parse for array
    //
    
    [[TestModel parseSignalForModelObject:testArray] subscribeNext:^(NSArray *x) {
        NSLog(@"Models: %@", x);
    } error:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    //
    // Should fail for fake array
    //
    
    [[TestModel parseSignalForModelObject:@[ @{ @"fake" : @"" }]] subscribeNext:^(TestModel *x){
        NSLog(@"Model: %@", x);
    } error:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];

    NSLog(@"--- TRAVERSE FUNCTIONS ---");

    //
    // Normal parse for object
    //
    
    [[TestModel parseSignalForObject:object1] subscribeNext:^(TestModel *x) {
        NSLog(@"Model: %@", x);
    } error:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    //
    // Should fail for fake object
    //
    
    [[TestModel parseSignalForObject:@{}] subscribeNext:^(TestModel *x) {
        NSLog(@"Model: %@", x);
    } error:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    //
    // Normal parse for array
    //
    
    [[TestModel parseSignalForObject:testArray] subscribeNext:^(NSArray *x) {
        NSLog(@"Models: %@", x);
    } error:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    //
    // Should fail for fake array
    //
    
    [[TestModel parseSignalForObject:@[ @{ @"fake" : @"" }]] subscribeNext:^(TestModel *x){
        NSLog(@"Model: %@", x);
    } error:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    //
    // Traverse objects
    //
    
    NSLog(@"--- TRAVERSE OBJECTS ---");
    
    //
    // Should fail for fake array
    //
    
    [[TestModel parseSignalForObject:traverseObject1] subscribeNext:^(TestModel *x){
        NSLog(@"Model: %@", x);
    } error:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    //
    // Should fail for fake array
    //
    
    [[TestModel parseSignalForObject:traverseObject2] subscribeNext:^(TestModel *x){
        NSLog(@"Model: %@", x);
    } error:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    //
    // Should fail for fake array
    //
    
    [[TestModel parseSignalForObject:traverseObject3] subscribeNext:^(TestModel *x){
        NSLog(@"Model: %@", x);
    } error:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    //
    // Should fail for fake array
    //
    
    [[TestModel parseSignalForObject:traverseObject4] subscribeNext:^(TestModel *x){
        NSLog(@"Model: %@", x);
    } error:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
    [[TestModel parseSignalForObject:traverseObject5] subscribeNext:^(TestModel *x){
        NSLog(@"Model: %@", x);
    } error:^(NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
}

@end
