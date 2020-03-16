#import "T1Array.h"

@implementation T1Array

- (NSArray *)convertToHappy:(NSArray *)sadArray {
    NSMutableArray *resultArray = [sadArray mutableCopy];
    
    for (int i = 1; i < (int)[resultArray count] - 1; i++) {
        NSNumber *prev = i - 1 >= 0 ? [resultArray objectAtIndex:i - 1] : [NSNumber numberWithInt:0];
        NSNumber *next = i + 1 < [resultArray count] ? [resultArray objectAtIndex:i + 1] : [NSNumber numberWithInt:0];
        NSNumber *current = [resultArray objectAtIndex:i];
        
        if (prev.intValue + next.intValue < current.intValue) {
            [resultArray removeObjectAtIndex:i];
            i -= 2;
        }
    }
    
    return resultArray;
}



@end
