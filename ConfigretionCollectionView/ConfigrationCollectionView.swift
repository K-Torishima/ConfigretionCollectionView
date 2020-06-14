//
//  ConfigrationCollectionView.swift
//  ConfigretionCollectionView
//
//  Created by koji torishima on 2020/06/15.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import UIKit

class ConfigrationCollectionView: NSObject, UICollectionViewDelegate, UICollectionViewDataSource {

//   初期値がある物ならこちらで定義するのもあり
//    var items: [String] = ["aaa","bbb","ccc","ddd","eee","fff","ggg","hhh","iii","jjj","kkk",]
    // こちらの方法もある
    var items: Array<Int>
    init(items: Array<Int>) {
        self.items = items
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        items.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        return cell
    }




}
