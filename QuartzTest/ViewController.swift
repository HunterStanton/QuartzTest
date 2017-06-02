//
//  ViewController.swift
//  QuartzTest
//
//  Created by Hunter Stanton on 6/2/17.
//  Copyright © 2017 Hunter Stanton. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    

    /// The label that displays "Hunter Stanton was here" in the main view.
    @IBOutlet weak var HSWasHereLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Main view background color animation
        
        // Create a new CAKeyframeAnimation that runs on the background color
        let changeColorsAnim = CAKeyframeAnimation(keyPath: "backgroundColor")
        
        // Generate 6 random colors to use in the transition
        changeColorsAnim.values = [generateRandomColor(), generateRandomColor(), generateRandomColor(), generateRandomColor(), generateRandomColor(), generateRandomColor()]
        
        // Set the duration of the animation
        changeColorsAnim.duration = 2.5
        
        // Set it to automatically reverse at the end of the last frame of the animation
        changeColorsAnim.autoreverses = true
        
        // Set the repeat count to be the highest possible float value
        changeColorsAnim.repeatCount = Float.greatestFiniteMagnitude
        
        // Set the calculation mode to smooth spline calculation
        changeColorsAnim.calculationMode = kCAAnimationCubic
        
        // Add a sublayer to the current view layer
        self.view.layer?.add(changeColorsAnim, forKey: "changeColorsAnim")
        
        
        // MARK: - HSWasHereLabel border color animation
        
        // Enable the border of the HSWasHereLabel textfield
        HSWasHereLabel.layer?.borderWidth = 1.0
        
        // Round the corners of the CAKeyframeAnimation
        HSWasHereLabel.layer?.cornerRadius = 5.0
        
        // Create a new CAKeyframeAnimation that runs on the border color
        let changeBorderColorAnim = CAKeyframeAnimation(keyPath: "borderColor")
        
        // Generate 6 random colors to use in the transition
        changeBorderColorAnim.values = [generateRandomColor(), generateRandomColor(), generateRandomColor(), generateRandomColor(), generateRandomColor(), generateRandomColor()]
        
        // Set the duration of the animation
        changeBorderColorAnim.duration = 1.0
        
        // Set it to automatically reverse at the end of the last frame of the animation
        changeBorderColorAnim.autoreverses = true
        
        // Set the repeat count to be the highest possible float value
        changeBorderColorAnim.repeatCount = Float.greatestFiniteMagnitude
        
        // Set the calculation mode to smooth spline calculation
        changeBorderColorAnim.calculationMode = kCAAnimationCubic
        
        // Add a sublayer to the HSWasHereLabel's layer
        self.HSWasHereLabel.layer?.add(changeBorderColorAnim, forKey: "changeBorderColorsAnim")
        
        // MARK: - After animation stuff
        
        print("Animations started!")
        
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    
    /// Generates a random color that is neither black nor white.
    ///
    /// - Returns: The random color that was generated.
    func generateRandomColor() -> CGColor {
        
        // Use Arc4Random to generate a random number in between 0 and 255
        // Divide all numbers by 256 to make sure that they stay between 1.0 and 0.0 due to these values only being valid in that range
        let randomHue : CGFloat = CGFloat(arc4random() % 256) / 256
        
        // Add 0.5 to these values to avoid returning a mostly black or a white value
        let randomBrightness : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5
        let randomSaturation : CGFloat = CGFloat(arc4random() % 128) / 256 + 0.5
        
        // Return an NSColor converted into a CGColor
        return NSColor(hue: randomHue, saturation: randomSaturation, brightness: randomBrightness, alpha: 1).cgColor
    }



}

