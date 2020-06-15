//
//  ConfigrationCollectionView.swift
//  ConfigretionCollectionView
//
//  Created by koji torishima on 2020/06/15.
//  Copyright © 2020 koji torishima. All rights reserved.
//

import UIKit

class ConfigrationCollectionView: NSObject, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

//   初期値がある物ならこちらで定義するのもあり
//    var items: [String] = ["aaa","bbb","ccc","ddd","eee","fff","ggg","hhh","iii","jjj","kkk",]
    // こちらの方法もある
    var magin: CGFloat = 5

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

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            // collectionViewのwidthのサイズ ÷ 3 - 10　これならいちいちcellに対してレイアウト書けなくて良い
            // Cellの中身をかけるだけ
            let cellSize = collectionView.bounds.width - 10
            let height = cellSize/3
            return CGSize(width: cellSize, height: height)
        }

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            return UIEdgeInsets(top: .zero, left: magin, bottom: .zero, right: magin)
        }

        //縦の間隔
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
            return magin
        }
        //横の間隔
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
            return magin
        }
}
