//
//  ViewController.swift
//  Ensuesta
//
//  Created by Alumno on 3/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var viewButton: UIView!
    @IBOutlet weak var radioButton1: UIImageView!
    @IBOutlet weak var radioButton2: UIImageView!
    
    var estadoVacunado = false
    var estadoVacunado2 = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //para hacer el gradiente
        let gradiente = CAGradientLayer()
        gradiente.frame = viewContainer.bounds
        gradiente.colors =
            [UIColor(red:0, green: 30/255, blue: 98/255, alpha: 1).cgColor, UIColor(red: 200/255, green: 16/255, blue: 46/255, alpha: 1).cgColor]
        gradiente.startPoint = CGPoint(x:0, y: 0.5)
        gradiente.endPoint = CGPoint(x: 1, y: 0.5)
        gradiente.shouldRasterize = true
        
        viewContainer.layer.addSublayer(gradiente)
        viewContainer.layer.cornerRadius = 30
        
        
        
        
        
    }

    @IBAction func doClickVacunado(_ sender: Any) {
        estadoVacunado = !estadoVacunado
        if estadoVacunado {
            radioButton1.image = UIImage(named: "radio-button1")
            radioButton2.image = UIImage(named: "radio-button2")
        }
        else{
            radioButton1.image = UIImage(named: "radio-button2")

        }
    }
    
    @IBAction func doClickVacunadoNo(_ sender: Any) {
        estadoVacunado2 = !estadoVacunado2
        if estadoVacunado2 {
            radioButton1.image = UIImage(named: "radio-button2")
            radioButton2.image = UIImage(named: "radio-button1")
        }
        else{
            radioButton2.image = UIImage(named: "radio-button2")
            
        }
    }
    
}

