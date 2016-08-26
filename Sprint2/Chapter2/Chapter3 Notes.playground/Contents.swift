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

