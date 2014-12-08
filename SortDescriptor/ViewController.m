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

    // Step 1 - SORT AN ARRAY
    self.sourceArray=[[NSArray alloc]initWithObjects:[[Source alloc]initWithCode:3 codeDescription:@"Three"],[[Source alloc]initWithCode:2 codeDescription:@"Two"],[[Source alloc]initWithCode:4 codeDescription:@"Four"],[[Source alloc]initWithCode:1 codeDescription:@"One"], nil];

    
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
        NSLog(@"######## -> sorted =%@",sourceObj.codeDescription);
    }
    
}



@end
