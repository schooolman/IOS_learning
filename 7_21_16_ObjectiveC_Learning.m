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

// nesting strings

NSString *firstName = @"Jacob Schoolmeesters";
NSString *lastName = @"SCHOOLMAN";

NSString *fullName = [[firstName stringByAppendingString:@" "] stringByAppendingString:lastName];

NSLog(@"%@", fullName);

// replacing strings with others using a factory
[fullName stringByReplacingOccurrencesOfString:@"Eric" withString:@"Derrick"];

// Common pattern for creating an empty string
NSString *emptyString = [[NSString alloc] init];
NSArray *emptyArray = [[NSArray alloc] init];
NSDictionary *emptyDictionary = [[NSDictionary alloc] init];


NSString *copy = [[NSString alloc] initWithString:otherString];

// Better formating - stringWtihFormat
NSString *fullname = [NSString stringWithFormat:@"%@ %@", firstName, lastName];

// Objective-C if statements
// Only when the if encounters a YES will it execute the code inside the curly-braces {}.
// YES = true
BOOL myNameIsJake = YES;
// NO = False
BOOL myNameIsDave = NO;



// ! is the negation operator
if(mrHiggieIsMean){
  NSLog(@"Confirmed: he is super mean");
}

if(!mrHiggieIsMean){
  NSLog(@"No, actually he's really nice");
}

if(jakeSchoolmanIsMean){
	NSLog(@"Duh, he is a total jerk");
} else {
	NSLog(@"OF COURSE YOU FOOL");
}

// using cases to identify results, and the intValue message to create a boolean.

if([meannessScale intValue] < 4) {
  NSLog(@"Mr. Higgie is on the nice side");
} else if(4-7) {
  NSLog(@"Mr. Higgie is sorta nice but not really");
} else {
  NSLog(@"Mr. Higgie is definitely mean");
}







