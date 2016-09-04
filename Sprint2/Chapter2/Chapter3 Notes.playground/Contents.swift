//Chapter 3
//Views and view heirarchy

//View objects make up an application's user interface.

//A view is an instance of UIView or one of its subclasses
//It Knows how to draw itself
//It can handle events, like touches
//It exists within a hierarchy of views whose root is the applications window

//View Hierarchy
//Every application has a single instance of UIWindow that serves as the container for all the views in the application.

//UIWindow is a subclass of UIView
//The window is created when the application launches. Once created other views can be added to it.
//Views that are created when the window is launched are subviews, and those views can have their own subviews, thus creating a view hierarchy.

//Every instance of UIView has a superview property, so when you add a subview of any view the inverse relationship of a superview is established.

//The auto Layout System
//This is used in laying out apps so that they are flexible regardless of the size of device that they are being displayed on.
//The Auto Layout system is based on the alignment rectangle, which is defined by several layout attributes.
//A constraint defines a specific relationship in a view hierarchy that can be used to determine a layout attribute for one or more views.  

//property observer is a chunk of code that gets called whenever a property's value changes. 
