# War-VIPER

## Introduction 

This repository contains a re-implementation of the *War* card game, originally from the [Code with Chris](http://codewithchris.com) introduction to Swift. The original game implementation uses the MVC design pattern; this reimplementation refactors that code to a VIPER-based design pattern. 

The VIPER architecture design pattern separates the view control logic, from the application logic -- addressing the issue of "Massive View Controllers" in the MVC pattern. 
* The INTERACTOR implements the application logic, manipulating the model objects independently of any UI.  
* The ENTITIES represent the model objects. 
* The PRESENTER implements the view control logic. The PRESENTER knows about _what_ data needs to be shown, and _when_ that data should be shown. When it needs data, it asks the INTERACTOR, and gets (simple) data structures to be displayed -- it never does "real work" on data, and never receives ENTITIES. 
* The VIEW is passive, waiting for the PRESENTER to give it content to display. Where the PRESENTER knows what and when, the VIEW knows _how_ to display data. 
* (The ROUTER handles the routing or navigating between different screens.) 

For more on VIPER see [Architecting iOS Apps with VIPER](https://www.objc.io/issues/13-architecture/viper/). 

## Design 

The original War card game implements the "entire" game application logic in a single function in the View Controller. This function, `dealTapped(_ sender:Any)`, determines the random cards to be displayed, checks who wins, updates the score, _and_ handles the updating of the UI. 

Kai kai kai kai kai 
