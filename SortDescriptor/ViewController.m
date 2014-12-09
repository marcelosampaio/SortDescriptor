//
//  ViewController.m
//  SortDescriptor
//
//  Created by Marcelo Sampaio on 12/8/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "ViewController.h"
#import "Source.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize sourceArray;


- (void)viewDidLoad {
    [super viewDidLoad];
    [self executeSort];
  
//    NSMutableDictionary *dic=[[NSMutableDictionary alloc]init];
//    
//    [dic setObject:@"Um" forKey:@"1"];
//    [dic setObject:@"Dois" forKey:@"2"];
//    [dic setObject:@"Tres" forKey:@"3"];
//    
//    NSMutableDictionary *dicCopy=[[NSMutableDictionary alloc]initWithDictionary:dic copyItems:YES];
//
//    NSLog(@"=%@",[dic objectForKey:@"2"]);
//
//    for (NSString *item in dic) {
//        int key=[item intValue];
//        NSLog(@"--->item%d  description=%@",key,[dicCopy objectForKey:item]);
//    }

}

-(void)executeSort {
    // Step 1 - SORT AN ARRAY
    self.sourceArray=[[NSArray alloc]initWithObjects:[[Source alloc]initWithCode:1 codeDescription:@"z"],[[Source alloc]initWithCode:2 codeDescription:@"f"],[[Source alloc]initWithCode:3 codeDescription:@"a"],[[Source alloc]initWithCode:4 codeDescription:@"b"], nil];
    
    
    for (Source *sourceObj in self.sourceArray) {
        NSLog(@"-----> original=%@",sourceObj.codeDescription);
    }
    
    
    // Step 2
    NSSortDescriptor *sortDescriptor;
    sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"codeDescription"
                                                 ascending:YES];
    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
    NSArray *sortedArray;
    sortedArray = [self.sourceArray sortedArrayUsingDescriptors:sortDescriptors];
    
    // Step 3
    for (Source *sourceObj in sortedArray) {
        NSLog(@"######## -> sorted = %@",sourceObj.codeDescription);
    }
    
}

@end
