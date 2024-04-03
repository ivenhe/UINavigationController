//
//  ViewController2.swift
//  UINavigationController
//
//  Created by Rysty on 03.04.2024.
//

import UIKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let backButton = UIButton(type: .system)
               backButton.setTitle("Back", for: .normal)
               backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
               backButton.frame = CGRect(x: 50, y: 200, width: 100, height: 50)
               view.addSubview(backButton)
           }
           
        @IBAction func goBack() {
        navigationController?.popViewController(animated: true)
    }
    
}
