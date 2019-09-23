//
//  ViewController.swift
//  rockScizorsPaper
//
//  Created by CesarSS on 9/20/19.
//  Copyright © 2019 CesarSS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombreTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "pasarNombre"{
            let destino = segue.destination as! SegundoViewController
            destino.nombre = nombreTextField.text!
        }
    }

    @IBAction func nombreTextField(_ sender: UITextField) {
        self.resignFirstResponder()
    }
    
}

