//
//  NVStudent.m
//  14. StringsAndRegEx
//
//  Created by Admin on 24.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "NVStudent.h"

@implementation NVStudent

// Create a regular expression with given string and options
- (NSRegularExpression *)regularExpressionWithString:(NSString *)string
{
    // Create a regular expression

    
    NSError *error = NULL;

    
    //NSString *placeholder = isWholeWords ? @"\\b%@\\b" : @"%@";
    // \\b%@\\b is used for searching whole word, not part of.
   
    NSString *pattern =string; //[NSString stringWithFormat:placeholder, string];
    
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:pattern options:0 error:&error];
    
    if (error)
    {
        NSLog(@"Couldn't create regex with given string and options");
    }
    
    return regex;
}

@end
