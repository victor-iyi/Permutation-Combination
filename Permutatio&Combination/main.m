#import <Foundation/Foundation.h>
#import "MathHelper.h"

CGFloat factorial(int);
CGFloat permutation(int, int);
CGFloat combination(int, int);

int main(int argc, const char * argv[]) {
    
    CGFloat fact, perm, comb;
    int n, r;
    n = 12;
    r =8;
    
    NSLog(@"WITHOUT ENCAPSULATION");
    
    // Without encapsulation
    fact = factorial(n);
    perm = permutation(n, r);
    comb = combination(n, r);
    
    NSLog(@"%i!     = %.2f", n, fact);
    NSLog(@"P(%i,%i) = %.2f", n, r, perm);
    NSLog(@"C(%i,%i) = %.2f", n, r, comb);
    
    NSLog(@"\n");
    NSLog(@"WITH ENCAPSULATION");
    
    
    // With encapsualtion
    MathHelper *math = [[MathHelper alloc] init];
    fact = [math factorial:n];
    perm = [math permutation:n :r];
    comb = [math combination:n :r];
    
    NSLog(@"%i!     = %.2f", n, fact);
    NSLog(@"P(%i,%i) = %.2f", n, r, perm);
    NSLog(@"C(%i,%i) = %.2f", n, r, comb);
    
    return 0;
}


// n!
// Calculates the factorial of a given number n
CGFloat factorial(int n) {
    if (n <= 1) return 1;
    return n * factorial(n-1);
}


// P(n,r) = n! / (n-r)!
// Calculates the permuation of an object n, r no of times
CGFloat permutation(int n, int r) {
    return factorial(n) / factorial(n-r);
}

// C(n,r) = n! / ((n-r)! * r!)
// Calcualtes the combination of an object n, r no of times
CGFloat combination(int n, int r) {
    return factorial(n) / (factorial(n-r) * factorial(r));
}
