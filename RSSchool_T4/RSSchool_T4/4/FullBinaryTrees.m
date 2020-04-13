#import "FullBinaryTrees.h"
// good luck

@implementation FullBinaryTrees



- (NSString *)stringForNodeCount:(NSInteger)count {
    
    if (count %2 == 0) {
        return @"[]";
    }

    NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@"null,"];
    
    NSMutableString *result = [NSMutableString stringWithString:@"["];
   
        count--;
    
        NSArray *arrayOfNodesStrings = [self recursion:count];
    
        for (int i =0; i < arrayOfNodesStrings.count; i++) {
            NSString *nodeString = [arrayOfNodesStrings[i] stringByTrimmingCharactersInSet:set];

            if ([nodeString isEqualToString:@""]) {
                [result appendFormat:@"[0%@]", nodeString];
            }
            else [result appendFormat:@"[0,%@]", nodeString];
    
            if (i != arrayOfNodesStrings.count-1){
                [result appendString:@","];
            }
        }

    [result appendString:@"]"];
  
    return result;
}



- (NSArray *) recursion: (NSUInteger) count {
    
    NSMutableArray *arrayOfStrings = [NSMutableArray arrayWithCapacity:0];

    if (count == 0) {
      
        [arrayOfStrings addObject:@"null,null"];
    }
    
    else {
        count-=2;
        NSInteger i,j;
        
        for (i = count, j=0; i <= count; i-=2, j+=2) {
            NSArray *leftArrayOfStrings = [self recursion:i];
            NSArray *rightArrayOfStrings = [self recursion:j];
            for (int k =0; k < leftArrayOfStrings.count; k++) {
                for (int m = 0; m < rightArrayOfStrings.count; m++) {
                    NSString *resultString = [[NSString alloc] initWithFormat:@"0,0,%@,%@", leftArrayOfStrings[k], rightArrayOfStrings[m]];
                    [arrayOfStrings addObject:resultString];
    
                }
            }

        }
    }
    return arrayOfStrings;
}
@end
