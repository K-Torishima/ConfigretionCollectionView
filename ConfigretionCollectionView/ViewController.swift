//
//  ViewController.swift
//  ConfigretionCollectionView
//
//  Created by koji torishima on 2020/06/15.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var configrationCollectionView = ConfigrationCollectionView()

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }

    private func setupCollectionView() {
        let nib = UINib(nibName: "CollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "cell")

        collectionView.delegate = configrationCollectionView
        collectionView.dataSource = configrationCollectionView
    }


}

