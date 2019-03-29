//
//  ViewController.swift
//  apitest
//
//  Created by Admin on 26/3/2562 BE.
//  Copyright © 2562 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageCon: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let imageURL = URL(string: "https://www.jpl.nasa.gov/spaceimages/images/largesize/PIA05982_hires.jpg")!
        let task = URLSession.shared.dataTask(with: imageURL) { (data, response, error) in
            if error == nil{
                let loadImage = UIImage(data : data!)
                self.imageCon.image = loadImage
            
        }
        
    }
        task.resume()
    }

}

