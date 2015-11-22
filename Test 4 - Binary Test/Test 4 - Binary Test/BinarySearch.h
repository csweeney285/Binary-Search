//
//  NSArrayBinarySearch.h
//  Test 4 - Binary Test
//
//  Created by Conor Sweeney on 10/16/15.
//  Copyright © 2015 Conor Sweeney. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinarySearch : NSObject
{
    NSString *file;
    NSString *quote;
    NSString *str;
    NSArray *book;
    NSFileManager *filemgr;
    NSData *databuffer;
    NSUInteger min;
    NSUInteger max;
    NSUInteger middle;
    NSString *tempString;
    NSComparisonResult result;
    int flag;

}


-(NSInteger) binarySearch;
-(instancetype) initWithFileName: (NSString*)fileName andWithQuote: (NSString*)quoteName;

@end
