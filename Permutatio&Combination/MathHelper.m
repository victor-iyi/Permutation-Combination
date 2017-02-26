#import "MathHelper.h"

@implementation MathHelper

// n!
// Calculates the factorial of a given number
-(CGFloat)factorial: (int) n {
    if (n <= 1) return 1;
    else return n * [self factorial:n-1];
}

// P(n,r) = n! / (n-r)!
// Calculates the permutation of an object at r no of times
-(CGFloat)permutation:(int)n :(int)r {
    return [self factorial:n] / [self factorial:n-r];
}

// C(n,r) = n! / (n-r)!r!
// Calculates the combination of an object at r no of times
-(CGFloat)combination:(int)n :(int)r {
    return [self factorial:n] / ([self factorial:n-r] * [self factorial:r]);
}

@end
