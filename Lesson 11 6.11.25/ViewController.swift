//
//  ViewController.swift
//  Lesson 11 6.11.25
//
//  Created by Dmitry cracked by Me on TEST4XXX##### 6.11.25.
//

import SnapKit
import Kingfisher
import UIKit

class ViewController: UIViewController {

    private var stringUrl = "https://i.pinimg.com/originals/71/9b/1e/719b1eabeffc617b788639f4e564bbbb.jpg"
    
    private var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let buttonImg: UIButton = {
        let button = UIButton()
        button.setTitle("PUSH", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }


    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        configure()
    }
    
    func configure() {
    
        view.addSubview(imageView)
        imageView.frame = CGRect(x: 50, y: 50, width: 200, height: 200)
        
        view.addSubview(buttonImg)
        buttonImg.frame = CGRect(x: 200, y: 500, width: 80, height: 80)
        let actionButton = UIAction { _ in
            self.buttonPressed()
        }
        buttonImg.addAction(actionButton, for: .touchUpInside)
        
    }
  
    func buttonPressed() {
        let url = URL(string: stringUrl) // kingfisher
        imageView.kf.setImage(with: url) // kingfisher
    }
    
}

