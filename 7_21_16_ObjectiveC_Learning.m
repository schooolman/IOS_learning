// Objective C and sending Messages

// There are objects built into Objective C such as description

// passing the description to the food array
NSArray *foods = @[@"tacos", @"burgers"];

// NSLog(@"%@", [foods description]);

NSString *result = @[foods description];

NSLog(@"%@", result);

// Some variables need an asterik and some dont. ugh.

// %@ is just one of many format specifiers aka "placeholders" that can be used in NSLog and other data types	
// To log a NSUInteger use %lu in place of %@

// Note: A good rule of thumb for how to tell if an object is an Objective-C object or a C one: Objective-C objects are defined with the * in front of variable names, like this: NSString *name


// figure out my dogs age in dog years

// declaring variables
NSNumber *tilly = @3;
NSNumber *dogYears = @7;

// convert to unsigned integers
NSUInteger tillyDog = [tilly unsignedIntegerValue];
NSUInteger dogMultiplyer = [dogYears unsignedIntegerValue];

// multiply
NSUInteger tillyAge = tillyDog * dogMultiplyer;

// log out the results
NSLog(@"My dog Tilly is %lu years old....in dog years", tillyAge);




