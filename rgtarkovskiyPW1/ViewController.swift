//
//  ViewController.swift
//  rgtarkovskiyPW1
//
//  Created by Al Stark on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var views: [UIView]!
    
    @IBOutlet weak var ChangeColorButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        var set = Set<UIColor>()
        while set.count < views.count {
            set.insert(UIColor(
                red: .random(in: 0...1),
                green: .random(in: 0...1),
                blue: .random(in: 0...1),
                alpha: 1))
        }
        for view in views {
            ChangeColorButton.isEnabled = false
            UIView.animate(withDuration: 2, animations:  {
                view.layer.cornerRadius = .random(in: 0...10)
                view.backgroundColor = set.popFirst()
            }) {
                completion in
                self.ChangeColorButton.isEnabled = true
            }
            
            
        }
    }
    
    
    @IBAction func AButton(_ sender: Any) {
       setup()
    }
    
}

