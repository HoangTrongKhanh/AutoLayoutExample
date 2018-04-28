//
//  MainViewController.swift
//  AutoLayoutExample
//
//  Created by Hoàng Khánh on 4/28/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    let previousButton:UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Previous", for: .normal)
        button.setTitleColor(.red, for: .normal)
        return button
    }()
    
    let pageControl:UIPageControl = {
        let pageCtr = UIPageControl()
        pageCtr.translatesAutoresizingMaskIntoConstraints = false
        pageCtr.currentPage = 0
        pageCtr.numberOfPages = 5
        pageCtr.currentPageIndicatorTintColor = .red
        pageCtr.pageIndicatorTintColor = .gray
        return pageCtr
    }()
    
    let nextButton:UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Next", for: .normal)
        button.setTitleColor(.red, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutBottomButton()
    }
    
    fileprivate func layoutBottomButton() {
        view.addSubview(previousButton)
        view.addSubview(pageControl)
        view.addSubview(nextButton)
        let bottomStackView = UIStackView(arrangedSubviews: [previousButton, pageControl, nextButton])
        view.addSubview(bottomStackView)
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            //add SafetyArea
            bottomStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomStackView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            bottomStackView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            bottomStackView.heightAnchor.constraint(equalToConstant: 50)])
        bottomStackView.distribution = .fillEqually
        bottomStackView.axis = .horizontal
        
    }
}
