//
//  HelloWorld.swift
//
//  Created by Tamer Zreg
//  Created on 2024-02-08
//  Version 1.0
//  Copyright (c) Tamer Zreg. All rights reserved.
//
//  This Program is a calculator that includes 6 Different Operations.

// Imports Module
import Foundation

// Asks for radius
print("Enter a radius of a sphere (unit), (u^1)");

do{
    // Reads new line
    if let radius = readLine(){
        // Tries casting radius to double and assigning to a new variable
        if let radiusDouble = (Double)(radius){
        // Checks to see if radius is greater than 0
        if (radiusDouble > 0){
            // Assigns fraction to a variable (magic number)
            let fraction = (4.0/3.0);
            // Assigns pi to a variable
            let pi = Double.pi;
            // Calculates Volume
            let volume = fraction * pi * pow(radiusDouble, 3);
            // Rounds Volume
            let volumeRounded = round(volume * 1000) / 1000;
            // Displays Volume
            print("Your Volume is " + String(volumeRounded) + " (units cubed), (u^3)");
        }
        // If user did not enter a positive number
        else{
            print("Must be a positive number");
        }
        }
        // If user input a string or input nothing
        else{
        print("Must be a number");
        }
    }
    // Not really needed but is a placeholder for any other bugs
    else{
    print("Please input something");
    }
}
catch{
    print("Error");
}
