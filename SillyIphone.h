// @interface SillyIphone : NSObject
// @property NSString *phoneName;
// @property NSString *modelNumber;
// @end



// Defining the speak message
// @interface SillyIphone : NSObject
// 
// list of properties
// 
// -(void)speak;
// 
// @end


// @interface SillyIphone : NSObject

// @property NSString *phoneName;
// @property NSString *modelNumber;

// - (NSString *) speak;
// @end



// speak:(arguement)greeting
// you can have speak take an argument!


@interface SillyIphone : NSObject

@property NSString *phoneName;
@property NSString *modelNumber;

-(NSString *)speak:(NSString *)greeting;
@end