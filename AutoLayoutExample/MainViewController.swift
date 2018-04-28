//
//  MainViewController.swift
//  AutoLayoutExample
//
//  Created by Hoàng Khánh on 4/28/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let topHalfView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let lifeFromImageView:UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "icon-lifeform"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let titleTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.text = "Welcome to my amazing app"
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.backgroundColor = UIColor.clear
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        autoLayoutUI()
        
    }
    
    fileprivate func autoLayoutUI() {
        view.backgroundColor = .white
        view.addSubview(topHalfView)
        NSLayoutConstraint.activate([topHalfView.topAnchor.constraint(equalTo: view.topAnchor),
                                     topHalfView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                     topHalfView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                                     topHalfView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5)])
        topHalfView.addSubview(lifeFromImageView)
        
        lifeFromImageView.centerXAnchor.constraint(equalTo: topHalfView.centerXAnchor).isActive = true
        lifeFromImageView.centerYAnchor.constraint(equalTo: topHalfView.centerYAnchor).isActive = true
        lifeFromImageView.widthAnchor.constraint(equalToConstant: 130).isActive = true
        lifeFromImageView.heightAnchor.constraint(equalToConstant: 130).isActive = true
        
        //Title text
        view.addSubview(titleTextView)
        titleTextView.topAnchor.constraint(equalTo: lifeFromImageView.bottomAnchor, constant: 20).isActive = true
        titleTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        titleTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        titleTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
}
