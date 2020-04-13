#import "SquareDecomposer.h"

@implementation SquareDecomposer
- (NSArray <NSNumber*>*)decomposeNumber:(NSNumber*)number {
    
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:0];
    
    if (recursion(pow([number longValue],2),[number longValue],[number longValue],result)){
        
        return [[result reverseObjectEnumerator] allObjects];
        
    };
    return nil;
}

bool recursion(long value, long last, long number, NSMutableArray<NSNumber*>* result) {
    
    if(value == 0)
        return YES;
       
    if(last  == 1 && value != 0)
        return NO;
   
    long maxRoot = sqrt(value);

    if(pow(maxRoot,2) == value && last == number)
        maxRoot--;
    
    for(long i = maxRoot; i > 0; i--)
    {
        if (i < last)
        {
            [result addObject:[NSNumber numberWithLong:i]];
            
            if(recursion(value - i*i, i, number, result))
                return YES;
            
            [result removeLastObject];
        }
    }
    return NO;
}
@end
