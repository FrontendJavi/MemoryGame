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
        Image1.setImage(#imageLiteral(resourceName: "image1"), for: .normal)
        Image2.setImage(#imageLiteral(resourceName: "image5"), for: .normal)
        Image3.setImage(#imageLiteral(resourceName: "image7"), for: .normal)
        Image4.setImage(#imageLiteral(resourceName: "image4"), for: .normal)
        Image5.setImage(#imageLiteral(resourceName: "image6"), for: .normal)
        Image6.setImage(#imageLiteral(resourceName: "image9"), for: .normal)
        Image7.setImage(#imageLiteral(resourceName: "image3"), for: .normal)
        Image8.setImage(#imageLiteral(resourceName: "image8"), for: .normal)
        Image9.setImage(#imageLiteral(resourceName: "image2"), for: .normal)
        
        
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { (t) in
            self.randomImages()
            self.Image1.setImage(UIImage(named: "image4"), for: .normal)
            self.Image2.setImage(UIImage(named: "image9"), for: .normal)
            self.Image3.setImage(UIImage(named: "image6"), for: .normal)
            self.Image4.setImage(UIImage(named: "image1"), for: .normal)
            self.Image5.setImage(UIImage(named: "image3"), for: .normal)
            self.Image6.setImage(UIImage(named: "image5"), for: .normal)
            self.Image7.setImage(UIImage(named: "image2"), for: .normal)
            self.Image8.setImage(UIImage(named: "image7"), for: .normal)
            self.Image9.setImage(UIImage(named: "image8"), for: .normal)
            
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
    
    
    @IBAction func changeImage(_ sender: UIButton) {
        
        if Image1.currentImage == #imageLiteral(resourceName: "image4")        {
            Image1.setImage(#imageLiteral(resourceName: "image6"), for: .normal)
        }
            
        else
        {
            Image1.setImage(#imageLiteral(resourceName: "image1"), for: .normal)
        }
        
       
    }
    
    
    @IBAction func changeImage2(_ sender: UIButton) {
        
        if Image2.currentImage == #imageLiteral(resourceName: "image9") {
            Image2.setImage(#imageLiteral(resourceName: "image3"), for: .normal)
        }
        
        else
        {
            Image2.setImage(#imageLiteral(resourceName: "image5"), for: .normal)
        }
        
    }
    
    @IBAction func changeImage3(_ sender: UIButton) {
        
        if Image3.currentImage == #imageLiteral(resourceName: "image6") {
            Image3.setImage(#imageLiteral(resourceName: "image8"), for: .normal)
        }
        
        else
        {
            Image3.setImage(#imageLiteral(resourceName: "image7"), for: .normal)
        }
        
    }
    
    @IBAction func changeImage4(_ sender: UIButton) {
        
        if Image4.currentImage == #imageLiteral(resourceName: "image1") {
            Image4.setImage(#imageLiteral(resourceName: "image2"), for: .normal)
        }
        
        else
        {
          Image4.setImage(#imageLiteral(resourceName: "image4"), for: .normal)
        }
        
    }
    
    
    @IBAction func changeImage5(_ sender: UIButton) {
        
        if Image5.currentImage == #imageLiteral(resourceName: "image3") {
            Image5.setImage(#imageLiteral(resourceName: "image5"), for: .normal)
        }
        
        else
        {
            Image5.setImage(#imageLiteral(resourceName: "image6"), for: .normal)
        }
    }
    
    @IBAction func changeImage6(_ sender: UIButton) {
        
        if Image6.currentImage == #imageLiteral(resourceName: "image5") {
            Image6.setImage(#imageLiteral(resourceName: "image1"), for: .normal)
        }
        
        else
        {
            Image6.setImage(#imageLiteral(resourceName: "image9"), for: .normal)
        }
        
    }
    
    
    @IBAction func changeImage7(_ sender: UIButton) {
        
        if Image7.currentImage == #imageLiteral(resourceName: "image2") {
            Image7.setImage(#imageLiteral(resourceName: "image7"), for: .normal)
        }
        
        else
        {
          Image7.setImage(#imageLiteral(resourceName: "image3"), for: .normal)
        }
    }
    
    
    @IBAction func changeImage8(_ sender: UIButton) {
        
        if Image8.currentImage == #imageLiteral(resourceName: "image7") {
            Image8.setImage(#imageLiteral(resourceName: "image9"), for: .normal)
        }
        
        else
        {
            Image8.setImage(#imageLiteral(resourceName: "image8"), for: .normal)
        }
    }
    
    
    @IBAction func changeImage9(_ sender: UIButton) {
        
        if Image9.currentImage == #imageLiteral(resourceName: "image8") {
            Image9.setImage(#imageLiteral(resourceName: "image4"), for: .normal)
        }
        
        else
        {
            Image9.setImage(#imageLiteral(resourceName: "image2"), for: .normal)
        }
        
    }
    
   
    
    
    
    
    
    
    
    
    
    
    
}
