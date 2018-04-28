//
//  SwipeCollectionViewController.swift
//  AutoLayoutExample
//
//  Created by Hoàng Khánh on 4/28/18.
//  Copyright © 2018 Hoàng Khánh. All rights reserved.
//

import UIKit

private let reuseIdentifier = "PageCellId"

class SwipeCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var pageModels = [
        PageModel(image: #imageLiteral(resourceName: "icon-lifeform1"), headerText: "Welcome to Nodejs tutorials"),
        PageModel(image: #imageLiteral(resourceName: "icon-lifeform2"), headerText: "React Native tutorials"),
        PageModel(image: #imageLiteral(resourceName: "icon-lifeform3"), headerText: "Vue.js tutorials"),
        PageModel(image: #imageLiteral(resourceName: "icon-lifeform4"), headerText: "Swift 4 tutorials"),
        PageModel(image: #imageLiteral(resourceName: "icon-lifeform5"), headerText: "Angular 5 tutorials"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Register cell classes
        self.collectionView!.register(PageCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView?.backgroundColor = .white
        collectionView?.isPagingEnabled = true
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pageModels.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PageCollectionViewCell
        cell.pageModel = pageModels[indexPath.item]
        return cell
    }

    //UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
