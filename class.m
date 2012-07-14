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

	@implementation Fraction
	-(void) print
	{
		NSLog(@"%i/%i", numerator, denominator);
	}
	-(void) setNumerator: (int) n
	{
		numerator = n;
	}
	
	-(void) setDenominator: (int) d
	{
		denominator = d;
	}
	@end

int main(int argc, char const *argv[])
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	Fraction *myFraction;

	//instace of fraction and save it to obj

	myFraction= [Fraction alloc];
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