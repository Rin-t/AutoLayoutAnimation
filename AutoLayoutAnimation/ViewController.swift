//
//  ViewController.swift
//  AutoLayoutAnimation
//
//  Created by Rin on 2021/05/15.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var viewCenterYConstraint: NSLayoutConstraint!
    @IBOutlet var viewCenterXConstraint: NSLayoutConstraint!
    var movedAviewCenterYConstraint: NSLayoutConstraint!
    var movedAviewCenterXConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var aView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //縦に動かす用の制約
        movedAviewCenterYConstraint = aView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -200)
        movedAviewCenterYConstraint.isActive = false
        
        //横に動かす用の制約
        movedAviewCenterXConstraint = aView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor , constant: 100)
        movedAviewCenterXConstraint.isActive = false
    }
    
    
    @IBAction func tappedMoveVerticalButtonButton(_ sender: UIButton) {
        viewCenterYConstraint.isActive.toggle()
        movedAviewCenterYConstraint.isActive.toggle()
           
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }

    }
    
    @IBAction func tappedMoveHolizontalButtonButton(_ sender: Any) {
        viewCenterXConstraint.isActive.toggle()
        movedAviewCenterXConstraint.isActive.toggle()
        
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
 
    }

}

