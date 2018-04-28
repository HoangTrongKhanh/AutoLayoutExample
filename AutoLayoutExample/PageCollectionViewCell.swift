//
//  PageCollectionViewCell.swift
//  AutoLayoutExample
//
//  Created by Hoàng Khánh on 4/28/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import UIKit

class PageCollectionViewCell: UICollectionViewCell {
    
    var pageModel: PageModel? {
        didSet {
            lifeFromImageView.image = pageModel?.image
            titleTextView.text = pageModel?.headerText ?? ""
            //titleTextView.textAlignment = .center
        }
    }
    
    private let topHalfView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let lifeFromImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let titleTextView: UITextView = {
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
    
    fileprivate func autoLayoutUI() {
        backgroundColor = .white
        addSubview(topHalfView)
        NSLayoutConstraint.activate([topHalfView.topAnchor.constraint(equalTo: topAnchor),
                                     topHalfView.leadingAnchor.constraint(equalTo: leadingAnchor),
                                     topHalfView.trailingAnchor.constraint(equalTo: trailingAnchor),
                                     topHalfView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.5)])
        topHalfView.addSubview(lifeFromImageView)
        
        lifeFromImageView.centerXAnchor.constraint(equalTo: topHalfView.centerXAnchor).isActive = true
        lifeFromImageView.centerYAnchor.constraint(equalTo: topHalfView.centerYAnchor).isActive = true
        lifeFromImageView.widthAnchor.constraint(equalToConstant: 130).isActive = true
        lifeFromImageView.heightAnchor.constraint(equalToConstant: 130).isActive = true
        
        //Title text
        addSubview(titleTextView)
        titleTextView.topAnchor.constraint(equalTo: lifeFromImageView.bottomAnchor, constant: 20).isActive = true
        titleTextView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        titleTextView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
        titleTextView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        autoLayoutUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
