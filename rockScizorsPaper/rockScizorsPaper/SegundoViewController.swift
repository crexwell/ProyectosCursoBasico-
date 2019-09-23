//
//  SegundoViewController.swift
//  rockScizorsPaper
//
//  Created by CesarSS on 9/20/19.
//  Copyright © 2019 CesarSS. All rights reserved.
//

import UIKit

class SegundoViewController: UIViewController {
    
    
    @IBOutlet weak var maquinaBnt: UIButton!
    
    @IBOutlet weak var maquinaLbl: UILabel!
    
    @IBOutlet weak var scorePersona: UILabel!
    
    var nombre: String = ""
    
    var counterMaquina = 0
    var counterPersona = 0
    
    let imagenes = [" ","👊🏻","🖐🏻","✌🏻","🦎","🖖🏻"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        maquinaLbl.text = "Score Máquina: \(counterMaquina)"
        scorePersona.text = "Score \(nombre): \(counterPersona)"
        
    }
    
    @IBAction func jugada(_ sender: UIButton) {
       
        let movJugador = sender.tag
        let movMaquina = Int(arc4random_uniform(5)+1)
        var tituloAlerta = ""
        
        if movJugador == movMaquina{
            maquinaBnt.setTitle(sender.titleLabel?.text, for: .normal)
            tituloAlerta = "Empate"
        }
        else{
            switch movJugador{
                case 1:
                    if movMaquina == 2 || movMaquina == 5{
                        maquinaBnt.setTitle("\(imagenes[movMaquina])", for: .normal)
                        
                }
                break
            default:
                break
            }
        }
        
        
    }
    
}
