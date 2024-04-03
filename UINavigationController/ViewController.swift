//
//  ViewController.swift
//  UINavigationController
//
//  Created by Rysty on 03.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton(type: .system)
                button.setTitle("Click", for: .normal)
                button.addTarget(self, action: #selector(goToSecondViewController), for: .touchUpInside)
                button.frame = CGRect(x: 50, y: 200, width: 300, height: 50)
                view.addSubview(button)
            }
            
             @IBAction func goToSecondViewController() {
                performSegue(withIdentifier: "goToSecondViewController", sender: nil)
    }
    
}
