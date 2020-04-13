#import "TelephoneFinder.h"

@implementation TelephoneFinder
- (NSArray <NSString*>*)findAllNumbersFromGivenNumber:(NSString*)number {
    int length = (int)[number length];
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:0];
    
    if ([number intValue]<0) {
        return nil;
    }
    
    for (int i = 0; i < length; i++) {
 
        if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"1"]) {
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"2"]];
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"4"]];
            continue;
        }
        if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"2"]) {
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"1"]];
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"3"]];
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"5"]];
            continue;
        }
        if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"3"]) {
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"2"]];
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"6"]];
            continue;
        }
        if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"4"]) {
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"1"]];
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"5"]];
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"7"]];
            continue;
        }
        
        
        if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"5"]) {
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"2"]];
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"4"]];
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"6"]];
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"8"]];
            continue;
        }
        if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"6"]) {
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"3"]];
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"5"]];
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"9"]];
            continue;
        }
        if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"7"]) {
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"4"]];
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"8"]];
            continue;
        }
        if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"8"]) {
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"5"]];
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"7"]];
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"9"]];
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"0"]];
            continue;
        }
        if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"9"]) {
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"6"]];
            [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"8"]];
            continue;
        }
        if ([[NSString stringWithFormat:@"%c", [number characterAtIndex:i]] isEqualToString: @"0"]) {
             [result addObject:[number stringByReplacingCharactersInRange:NSMakeRange(i, 1) withString:@"8"]];
             continue;
         }
        
    }
    return result;
}
@end
