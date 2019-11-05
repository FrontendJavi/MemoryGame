//
//  ViewController.swift
//  MemoryGame
//
//  Created by alumnos on 18/10/2019.
//  Copyright © 2019 alumnos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //let x : Int = 42
    //var myString = String(x)
    
    
    @IBOutlet weak var score: UITextField!
    
  
    
    @IBOutlet weak var startButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        score.text = String(puntuacion)
    }


}

