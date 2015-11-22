//
//  NSArrayBinarySearch.m
//  Test 4 - Binary Test
//
//  Created by Conor Sweeney on 10/16/15.
//  Copyright © 2015 Conor Sweeney. All rights reserved.
//

#import "BinarySearch.h"

@implementation BinarySearch

-(NSInteger) binarySearch{
    
    //convert file address into a string
    filemgr = [NSFileManager defaultManager];
    
    databuffer = [filemgr contentsAtPath: file ];
    str = [[NSString alloc] initWithData:databuffer encoding:NSUTF8StringEncoding];
    
    //convert string into an array of strings each separated by a new line
    book = [str componentsSeparatedByString:@"\n"];
    
    //find size of array
    max = [book count];
    
    //set min to 0
    min = 0;
    
    //binary search for the quote
    while (min<max) {
        //find middle array value
        middle = (min+max)/2;
        tempString = [book objectAtIndex:middle];
        result = [tempString localizedCaseInsensitiveCompare:quote];
        switch (result) {
            case NSOrderedAscending:
                min = middle +1;
                break;
            case NSOrderedDescending:
                max = middle -1;
                break;
            case NSOrderedSame:
                flag = 1;
                break;
            default:
                break;
        }
        if (flag==1) {
            break;
        }
    }
    return middle;
}
    
-(instancetype) initWithFileName: (NSString*)fileName andWithQuote: (NSString*)quoteName{
    if ( self = [super init] ) {
        file = fileName;
        quote = quoteName;
    }
    return self;
}

@end
