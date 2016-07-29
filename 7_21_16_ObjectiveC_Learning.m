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

// Comparing Strings
if([myString isEqualToString:otherString]) {
  NSLog(@"Hello from inside the if!");
}

// isEqualToString will evauluate exact string for match

NSString *hat = [mrHiggie currentHat];

if([hat isEqualToString:@"Sombrero"]){
  NSLog(@"Ese es un muy buen sombrero");
}else if ([hat isEqualToString:@"Fedora"]){
  NSLog(@"Mr. Higgie was an iPhone before there was iPhone");
}else if ([hat isEqualToString:@"AstronautHelmet"]){
  NSLog(@"You could log anything here");
}else{
  NSLog(@"Mr. Higgie wears no hat");
}

// Objective C Switch Cases

NSInteger day = getDayOfWeek();

switch (day) {
  case 1:
  case 2:
  case 3:
  case 4: {
    [mrHiggie setCurrentHat:@"Fedora"];
    break;
  }
  case 5: {
    [mrHiggie setCurrentHat:@"Sombrero"];
    break;
  }
  case 6:
  case 7: {
    [mrHiggie setCurrentHat:@"AstronautHelmet"];
    break;
  }
}

NSLog(@"Mr. Higgie is wearing: %@", [mrHiggie currentHat]);

DayOfWeek day = getDayOfWeek();

switch (day) {
    case DayOfWeekMonday:
    case DayOfWeekTuesday:
    case DayOfWeekWednesday:
    case DayOfWeekThursday: {
        [mrHiggie setCurrentHat:@"Fedora"];
        break;
    }
    case DayOfWeekFriday: {
        [mrHiggie setCurrentHat:@"Sombrero"];
        break;
    }
  case DayOfWeekSaturday: {
    	[mrHiggie setCurrentHat:@"CoolHat"];
  }
    case DayOfWeekSunday: {
        [mrHiggie setCurrentHat:@"AstronautHelmet"];
        break;
    }
}

NSLog(@"Mr. Higgie is wearing: %@", [mrHiggie currentHat]);


// Objective C Loops

NSArray *newHats = @[@"Cowboy", @"Conductor", @"Baseball"];

for (/*//loop through newHats//*/) {

  NSLog(@"Trying on new %@ hat", hat);

  if([mrHiggie tryOnHat:hat]) {
    NSLog(@"Mr. Higgie loves it");
  } else {
    NSLog(@"Mr. Higgie hates it");
  }
}

NSArray *newHats = @[@"Cowboy", @"Conductor", @"Baseball"];

for (NSString *hat in newHats) {

  NSLog(@"Trying on new %@ hat", hat);

  if([mrHiggie tryOnHat:hat]) {
    NSLog(@"Mr. Higgie loves it");
  } else {
    NSLog(@"Mr. Higgie hates it");
  }
}

NSDictionary *funnyWords = @{
  @"Schadenfreude": @"pleasure derived by someone from another person's misfortune.",
  @"Portmanteau": @"consisting of or combining two or more separable aspects or qualities",
  @"Penultimate": @"second to the last"
};

for (NSString *word in funnyWords){
  NSString *definition = funnyWords[word];
  NSLog(@"%@ is defined as %@", word, definition);
}

NSDictionary *funnyWords = @{
  @"Schadenfreude": @"pleasure derived by someone from another person's misfortune.",
  @"Portmanteau": @"consisting of or combining two or more separable aspects or qualities",
  @"Penultimate": @"second to the last"
};

for (NSString *word in funnyWords) {
  NSString *definition = funnyWords[word];
  NSLog(@"%@ is defined as %@", word, definition);
}


NSDictionary *funnyWords = @{
  @"Schadenfreude": @"pleasure derived by someone from another person's misfortune.",
  @"Portmanteau": @"consisting of or combining two or more separable aspects or qualities",
  @"Penultimate": @"second to the last"
};

for (NSString *word in funnyWords){
  NSString *definition = funnyWords[word];
  NSLog(@"%@ is defined as %@", word, definition);
}


// Creating an NSDictionary to run through with the enumerate for loop.

NSDictionary *newHats = @{                                                                                                    
  @"Cowboy": @"White",
  @"Conductor": @"Brown",
  @"Baseball": @"Red"
};

for (NSString *hat in newHats){

  NSString *color = newHats[hat];

  NSLog(@"Trying on new %@ %@ hat", color, hat);

  if([mrHiggie tryOnHat:hat withColor:color]) {
    NSLog(@"Mr. Higgie loves it");
  } else {
    NSLog(@"Mr. Higgie hates it");
  }
}


// Objective-C Blocks... aka functions
// ^blockName = ^{
// 	some code here
// }

// Must specify what type of value the block will return, use void if nothing is returned

void (^myFirstBlock)(void) = ^{
  NSLog(@"THIS IS THE FIRST BLOCK THAT I HAVE WRITTEN!!!");
};

myFirstBlock();

// Passing a string to a block
void (^myFirstBlock)(NSString *) = ^(NSString *words){
  NSLog(@"Hello from inside the block %@", words);
};

myFirstBlock(@"Hello");
myFirstBlock(@"World");



// enumerateObjectUsingBlock to replace a for loop.
//shorthand for writing loops in a sense

NSArray *newHats = @[@"Cowboy", @"Conductor", @"Baseball", 
  @"Beanie", @"Beret", @"Fez"];


[newHats enumerateObjectsUsingBlock:
 ^(NSString *hat, NSUInteger index, BOOL *stop){
   NSLog(@"%@ is a funny word", index+1, hat);
 }
 ];



