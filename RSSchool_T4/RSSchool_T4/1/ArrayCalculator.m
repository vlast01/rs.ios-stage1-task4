#import "ArrayCalculator.h"

@implementation ArrayCalculator
+ (NSInteger)maxProductOf:(NSInteger)numberOfItems itemsFromArray:(NSArray *)array {
    NSMutableArray *positiveIntegers = [NSMutableArray arrayWithCapacity:0];
    NSMutableArray *negativeIntegers = [NSMutableArray arrayWithCapacity:0];
    
    int multiplier = 1;
    int result = 1;

    int negativeComposition = 1;
    int positiveComposition = 1;
    
     
    for (id object in array) {
        if ([object isKindOfClass:[NSNumber class]]) {
            if ([object intValue] > 0) {
                [positiveIntegers addObject:object];
            }
            else if ([object intValue]< 0){
                [negativeIntegers addObject:object];
            }
        }
    }
    
    
    [positiveIntegers sortUsingSelector:@selector(compare:)];
    [negativeIntegers sortUsingSelector:@selector(compare:)];
    
    
    if ([positiveIntegers count] + [negativeIntegers count] == 0 ) {
        return 0;
    }
    
    if ([positiveIntegers count] + [negativeIntegers count] <= numberOfItems) {
        for (id object in positiveIntegers) {
            result*=[object intValue];
        }
        for (id object in negativeIntegers) {
            result*=[object intValue];
        }
        return result;
    }


    while (numberOfItems>0) {
        

        negativeComposition = 1;
        positiveComposition = 1;
        
        
        while  ([negativeIntegers count] >= 2 && numberOfItems >=2 && [positiveIntegers count] >= 2) {
            
            negativeComposition = [[negativeIntegers objectAtIndex:0] intValue]*[[negativeIntegers objectAtIndex:1] intValue];
            
            
            positiveComposition = [[positiveIntegers objectAtIndex:[positiveIntegers count]-1] intValue]*[[positiveIntegers objectAtIndex:[positiveIntegers count]-2] intValue];
            
            
            if (negativeComposition > positiveComposition) {
                multiplier = negativeComposition;
                
                [negativeIntegers removeObjectAtIndex:0];
                [negativeIntegers removeObjectAtIndex:0];
                numberOfItems -=2;
                
            }
            else {
                multiplier = positiveComposition;
                [positiveIntegers removeLastObject];
                [positiveIntegers removeLastObject];
                numberOfItems -=2;

            }
            
            result *=multiplier;
        }
        
        if ([positiveIntegers count] > 0) {
            result *= [[positiveIntegers objectAtIndex:[positiveIntegers count]-1] intValue];
            [positiveIntegers removeLastObject];
            numberOfItems--;
        }
 
    }
    
    return result;
}
@end
