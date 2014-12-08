//
//  Source.h
//  SortDescriptor
//
//  Created by Marcelo Sampaio on 12/8/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Source : NSObject

@property int code;
@property (nonatomic,strong)NSString *codeDescription;

- (id)initWithCode:(int)p_Code codeDescription:(NSString *)p_CodeDescription;


@end
