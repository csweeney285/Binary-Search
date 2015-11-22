//
//  main.m
//  Test 4 - Binary Test
//
//  Created by Conor Sweeney on 10/16/15.
//  Copyright © 2015 Conor Sweeney. All rights reserved.
//

//Read the text file assorted-breakfast.txt file and add each line to an array. You can use Objective-C to keep your life simple or you can use C.
// 1. Using Binary Search, find index of the array element that matches Whoa! Mr. Trout!"

#import <Foundation/Foundation.h>
#import "BinarySearch.h"

int main(int argc, const char * argv[]) {
    
    //Declare file of sorted strings to search in NSString
    NSString *fileName = @"/Users/conorsweeney/Downloads/test4BinarySearch/assorted-breakfast.txt";
    
    //Declare quote to search for index number in NSString
    NSString *quote = @"Whoa Mr.Trout\"";
    
    BinarySearch *search = [[BinarySearch alloc]initWithFileName:fileName andWithQuote:quote];
    NSLog(@"\n\nThe line %@ occurs at index:%lu in an array of sorted NSStrings separated by a new line\n\n",quote,[search binarySearch]);
    
    return 0;

}

