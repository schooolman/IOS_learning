// Creating a class in Objective C
// Classes start with an uppercase letter
// Objects start with a lower case letter
// 
// Defining it's interface
// @interface SillyIphone : NSObject
// @end

// You can write properties of the class with @property NSString *firstName; @property NSString *lastName;
// THis goes between the @interface and the @end

// @interface SillyIphone : NSObject
// @property NSString *phoneName;
// @property NSString *modelNumber;
// @end


// Seperate out the class from the main file, and put it into a header file. The header file ends with a .h extension.
#import "SillyIphone.h"

// implenting the class below
@implementation SillyIphone
@end


// Note: Properties, although accessed and set using dot notation, use message sending under the hood. When you write person.firstName, it actually calls [person firstName] and when you write person.firstName = @"Eric" it actually calls [person setFirstName:@"Eric"]

SillyIphone *talkingiPhone = [[SillyIphone alloc] init];
talkingiPhone.phoneName = @"Kelly";
NSLog(@"%@", talkingiPhone.phoneName);


// Challenge 7

// #import "SillyIphone.h"                                          

/*//Create a SillyIphone object and call it talkingDroid//*/
SillyIphone *talkingDroid = [[SillyIphone alloc] init];

/*//Set its phoneName and modelNumber properties//*/
talkingDroid.phoneName = @"Dennis";
talkingDroid.modelNumber = @"Droid123";

NSLog(@"phoneName: %@", talkingDroid.phoneName);
NSLog(@"modelNumber: %@", talkingDroid.modelNumber);


// // Defining the speak message
// @interface SillyIphone : NSObject

// // list of properties

// -(void)speak;

// @end

// Calling the speak message
// #import "SillyIphone.h"

// @implementation SillyIphone

// - (void) speak;
// {
//   NSLog(@"Speaking Iphone");
// }
// @end




// SillyIphone *talkingiPhone = [[SillyIphone alloc] init];
// talkingiPhone.phoneName = @"Mr. Higgie";
// [talkingiPhone speak];


// Using the self message

// #import "SillyIphone.h"

// @implementation SillyIphone
// -(void)speak;
// {
//     NSLog(@"%@ says Hello There!", self);
// }
// @end

// using self to access phoneName

#import "SillyIphone.h"

@implementation SillyIphone
-(void)speak;
{
    NSLog(@"%@", self.phoneName);
}
@end