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
            let transition = CATransition()
                    transition.duration = 0.3
                    transition.type = CATransitionType.push
                    transition.subtype = CATransitionSubtype.fromLeft
                    view.window?.layer.add(transition, forKey: kCATransition)
            
            navigationController?.popViewController(animated: true)
    }
    
}
