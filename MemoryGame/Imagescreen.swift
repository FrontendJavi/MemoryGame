//
//  Imagescreen.swift
//  MemoryGame
//
//  Created by alumnos on 21/10/2019.
//  Copyright © 2019 alumnos. All rights reserved.
//

import UIKit
var puntuacion : Int = 0

class Imagescreen : UIViewController {
    
    
    @IBOutlet weak var Image1: UIButton!
    
    @IBOutlet weak var Image2: UIButton!
    
    @IBOutlet weak var Image3: UIButton!
    
    @IBOutlet weak var Image4: UIButton!
    
    @IBOutlet weak var Image5: UIButton!
    
    @IBOutlet weak var Image6: UIButton!
    
    @IBOutlet weak var Image7: UIButton!
    
    @IBOutlet weak var Image8: UIButton!
    
    @IBOutlet weak var Image9: UIButton!
    
    //sistema de vida
    func life () {
        
        
        
        if Image1.currentImage == #imageLiteral(resourceName: "image1") {
            puntuacion = puntuacion + 1
          
        }
        
        if Image2.currentImage == #imageLiteral(resourceName: "image5") {
            puntuacion = puntuacion + 1
        }
        
        if Image3.currentImage == #imageLiteral(resourceName: "image7") {
            puntuacion = puntuacion + 1
        }
        
        if Image4.currentImage == #imageLiteral(resourceName: "image4") {
            puntuacion = puntuacion + 1
        }
        
        if Image5.currentImage == #imageLiteral(resourceName: "image6") {
            puntuacion = puntuacion + 1
        }
        
        if Image6.currentImage == #imageLiteral(resourceName: "image9") {
            puntuacion = puntuacion + 1
        }
        
        if Image7.currentImage == #imageLiteral(resourceName: "image3") {
            puntuacion = puntuacion + 1
        }
        
        if Image8.currentImage == #imageLiteral(resourceName: "image8") {
            puntuacion = puntuacion + 1
        }
        
        if Image9.currentImage == #imageLiteral(resourceName: "image2") {
            puntuacion = puntuacion + 1
        }
        
        
    }
    
    
    
    
// Esta función permite regresar a la pantalla de inicio
    @IBAction func backtoStart(_ sender: Any) {
        life()
        print(puntuacion)
        dismiss(animated: true, completion: nil)
        
        
    }
    
    //Esta función carga las imágenes en la pantalla
    override func viewDidLoad() {
        super.viewDidLoad()
        puntuacion = 0
        self.randomImages()
        Image1.setImage(self.shuffled[0], for: .normal)
        Image2.setImage(self.shuffled[1], for: .normal)
        Image3.setImage(self.shuffled[2], for: .normal)
        Image4.setImage(self.shuffled[3], for: .normal)
        Image5.setImage(self.shuffled[4], for: .normal)
        Image6.setImage(self.shuffled[5], for: .normal)
        Image7.setImage(self.shuffled[6], for: .normal)
        Image8.setImage(self.shuffled[7], for: .normal)
        Image9.setImage(self.shuffled[8], for: .normal)
        
        
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { (t) in
            self.randomImages()
            self.Image1.setImage(self.shuffled[0], for: .normal)
            self.Image2.setImage(self.shuffled[1], for: .normal)
            self.Image3.setImage(self.shuffled[2], for: .normal)
            self.Image4.setImage(self.shuffled[3], for: .normal)
            self.Image5.setImage(self.shuffled[4], for: .normal)
            self.Image6.setImage(self.shuffled[5], for: .normal)
            self.Image7.setImage(self.shuffled[6], for: .normal)
            self.Image8.setImage(self.shuffled[7], for: .normal)
            self.Image9.setImage(self.shuffled[8], for: .normal)
            
        }
     
    }
    //Array de imágenes que será recorrido
   
    var ArrayImages: Array<UIImage> = [#imageLiteral(resourceName: "image1"), #imageLiteral(resourceName: "image5"), #imageLiteral(resourceName: "image7"), #imageLiteral(resourceName: "image4"), #imageLiteral(resourceName: "image6"), #imageLiteral(resourceName: "image9"), #imageLiteral(resourceName: "image3"), #imageLiteral(resourceName: "image8"), #imageLiteral(resourceName: "image2")]
   
    var shuffled = [UIImage]();
    
    
    func randomImages() { //este método coge las imagenes de ArrayImages y las mete en la variable shuffled. Una vez allí aparecerán en otro orden diferente.
        //bucle for que recorre el array
        for _ in ArrayImages
        {
//esta constante genera un int random del array previamente habiendo contado todos los elementos de dicho array
            
            let rand = Int(arc4random_uniform(UInt32(ArrayImages.count)))
            //añade otro elemento random del array
            shuffled.append(ArrayImages[rand])
            //elimina la posición del array
            ArrayImages.remove(at: rand)
            
        }
    }
    
    
    
   
    
    
    
    
    
    
    
    
    
    
    
}
