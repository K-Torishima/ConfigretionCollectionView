//
//  ConfigrationCollectionView.swift
//  ConfigretionCollectionView
//
//  Created by koji torishima on 2020/06/15.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import UIKit

class ConfigrationCollectionView: NSObject, UICollectionViewDelegate, UICollectionViewDataSource {

    var items: [String] = ["aaa","bbb","ccc","ddd","eee","fff","ggg","hhh","iii","jjj","kkk",]

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        items.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }




}
