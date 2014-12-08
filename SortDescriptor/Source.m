//
//  Source.m
//  SortDescriptor
//
//  Created by Marcelo Sampaio on 12/8/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "Source.h"

@implementation Source

@synthesize code,codeDescription;

- (id)initWithCode:(int)p_Code codeDescription:(NSString *)p_CodeDescription
{
    self = [super init];
    if (self) {
        code=p_Code;
        codeDescription=p_CodeDescription;
    }
    return self;
}

@end
