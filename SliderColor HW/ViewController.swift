//
//  ViewController.swift
//  SliderColor HW
//
//  Created by Pavel Kuzovlev on 07.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var viewColor: UIView!
    @IBOutlet var viewColorGreen: UIView!
    @IBOutlet var viewColorBlue: UIView!
    
    
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        viewColor.layer.cornerRadius = 10
        viewColorGreen.layer.cornerRadius = 10
        viewColorBlue.layer.cornerRadius = 10
        
        redSlider.thumbTintColor = .red
        greenSlider.thumbTintColor = .green
        blueSlider.thumbTintColor = .blue
        
        redSlider.value = 8
        
        redValue.text = "\(redSlider.value)"
        greenValue.text = "\(greenSlider.value)"
        blueValue.text = "\(blueSlider.value)"
        

    }
    @IBAction func redSliderAction() {
        redValue.text = String(format: "%.1f", redSlider.value)
        
        let sliderValue = CGFloat(redSlider.value)
        viewColor.backgroundColor = viewColor.backgroundColor?.withAlphaComponent(sliderValue)
    }
    @IBAction func greenSliderAction() {
        greenValue.text = String(format: "%.1f", greenSlider.value)
        
        let sliderValue = CGFloat(greenSlider.value)
        viewColorGreen.backgroundColor = viewColorGreen.backgroundColor?.withAlphaComponent(sliderValue)

    }
    @IBAction func blueSliderAction() {
        blueValue.text = String(format: "%.1f", blueSlider.value)
        
        let sliderValue = CGFloat(blueSlider.value)
        viewColorBlue.backgroundColor = viewColorBlue.backgroundColor?.withAlphaComponent(sliderValue)
    }
    
    

}

