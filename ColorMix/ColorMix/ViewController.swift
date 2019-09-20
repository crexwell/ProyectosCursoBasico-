//
//  ViewController.swift
//  ColorMix
//
//  Created by CesarSS on 9/6/19.
//  Copyright © 2019 CesarSS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSwitch: UISwitch!
    
    @IBOutlet var greenSwitch: UISwitch!
    
    @IBOutlet var blueSwitch: UISwitch!
    
    @IBOutlet var redSlider: UISlider!
    
    @IBOutlet var greenSlider: UISlider!
    
    @IBOutlet var blueSlider: UISlider!
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateControls()
    }
    
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateControls()
        updateColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.backgroundColor = UIColor.black.cgColor
        
        updateColor()
        updateControls()
        
       
    }
    
    func updateColor(){
        var red : CGFloat = 0
        var green : CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn{
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn{
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn{
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        
        colorView.backgroundColor = color
    }
    
    func updateControls(){
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    
    }
    
    
    
    


}

