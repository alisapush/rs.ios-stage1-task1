#import "MiniMaxArrayConverter.h"

@implementation MiniMaxArrayConverter

- (NSArray<NSNumber*>*)convertFromArray:(NSArray<NSNumber*>*)array {
    
    NSSortDescriptor *highestToLowest =
    [NSSortDescriptor sortDescriptorWithKey:(@"self") ascending:(NO)];
    NSMutableArray *sortedArray = [array mutableCopy];
    [sortedArray sortUsingDescriptors:[NSArray arrayWithObject:highestToLowest]];
    
    int max = 0, min = 0;
    for (int i = 0, j = (int)[sortedArray count] - 1; i < (int)[sortedArray count] - 1; i++, j--) {
        max += [[sortedArray objectAtIndex:i] intValue];
        min += [[sortedArray objectAtIndex:j] intValue];
    }
    
    return @[[NSNumber numberWithInt:min], [NSNumber numberWithInt:max]];
}

@end
