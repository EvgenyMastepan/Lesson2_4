//
//  ViewController.swift
//  Lesson2_4
//
//  Created by Evgeny Mastepan on 03.12.2024.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var userImage: UIImageView = {
        $0.image = UIImage(named: "logo")
        $0.contentMode = .scaleAspectFit
        $0.frame = CGRect(x: blueContainerView.frame.minX + leftIndent,
                          y: blueContainerView.frame.minY + 55,
                          width: 92, height: 35)
        $0.clipsToBounds = true
        return $0
    }(UIImageView())
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}

