#import <Foundation/Foundation.h>

	@interface Fraction: NSObject
	{
		int numerator;
		int denominator;
	}

	//like prototype
	-(void) print;
	-(void) setNumerator: (int) n;
	-(void) setDenominator: (int) d;

	@end

	//printing it to console (getter)
	@implementation Fraction
	-(void) print
	{
		NSLog(@"%i/%i", numerator, denominator);
	}
	//setter for numerator
	//return is void - method name - parameter type - parameter name
	-(void) setNumerator: (int) n
	{
		numerator = n;
	}
	//setter for denominator
	-(void) setDenominator: (int) d
	{
		denominator = d;
	}
	@end

int main(int argc, char const *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];


	// myFraction is the name of the instance of Fraction
	Fraction *myFraction;

	//instance of fraction and save it to obj
	//allocate memory
	myFraction= [Fraction alloc];
	//initalize myFrac
	myFraction = [myFraction init];

	//setting values

	[myFraction setNumerator:1];
	[myFraction setDenominator:3];

	//Display the fract

	[myFraction print];
	[myFraction release];

	[pool drain];

	return 0;
}