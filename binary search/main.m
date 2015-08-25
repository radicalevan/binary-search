//
//  main.m
//  binary search
//
//  Created by Evan Gale on 2015-08-25.
//  Copyright © 2015 Evan Gale. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *findANumber = [[NSMutableArray alloc] init];
        for (int i = 1; i < 51; i++) {
           [findANumber addObject:[NSNumber numberWithInt:i]];
        }
        for (int i = 1; i<50; i++) {
            NSLog(@"%@", findANumber[i]);
        }
        
        
        int min = 0, max = 49, mid;
        
        int value = 50;
        
        bool foundValue = false;
        
        NSLog(@"We are looking for %i...",value);
        
//        NSNumber *foundNumber = findANumber[1];

        
        while (min <= max ) {
            
            mid = (min + max) / 2;
            NSNumber *midNumber = findANumber[mid];
            NSNumber *bottomNumber = findANumber[min];
            NSNumber *topNumber = findANumber[max];
            
            NSLog(@"The bottom index is = %i , The top index is = %i, The middle number is = %i", bottomNumber.intValue, topNumber.intValue, midNumber.intValue);

            
            if (midNumber.intValue == value) {foundValue = true; break;}
            else if (value > midNumber.intValue) {min = mid + 1;}
            else{max = mid - 1;}
        }
        
        NSLog(@"foundValue = %i",foundValue);
        
        
        
        
        
    }
    return 0;
}
