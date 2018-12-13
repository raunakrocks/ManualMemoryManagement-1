//
//  ViewController.m
//  ManualMemoryManagement-1
//
//  Created by Raunak Talwar on 14/12/18.
//  Copyright © 2018 Raunak Talwar. All rights reserved.
//

#import "ViewController.h"
#import "SampleClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //1.
    [self simpleMethod1];
    //2.
    [self simpleMethod2];
    //3.
    SampleClass *obj = [self simpleMethod3];
    [obj retain];
    //do something-something with obj
    [obj release];
}
-(void)simpleMethod1 {
    SampleClass *sampleClassInstance = [[SampleClass alloc] init];
    //some code using sampleClassInstance
    [sampleClassInstance release];
}
-(void)simpleMethod2 {
    SampleClass *sampleClassInstance = [[SampleClass alloc] init];
    [sampleClassInstance autorelease];
}
-(SampleClass *)simpleMethod3 {
    SampleClass *sampleClassInstance = [[SampleClass alloc] init];
    [sampleClassInstance autorelease];
    return sampleClassInstance;
}

@end
