//
//  BoardView.swift
//  SudokuTool
//
//  Created by wenyou on 2017/2/16.
//  Copyright © 2017年 wenyou. All rights reserved.
//

import UIKit
import SnapKit

class BoardView : UIView, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    var collectionView: UICollectionView!
    var datas: [[Int]] = Array(repeating: Array(repeating: 0, count: 9), count: 9)
    let identifierString = "identifierString"

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .orange

        let layout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: Constants.columnWidth, height: Constants.columnWidth)
//        layout.minimumInteritemSpacing = 0
//        layout.minimumLineSpacing = 0

        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(NumberViewCell.self, forCellWithReuseIdentifier: identifierString)
        collectionView.backgroundColor = .clear
        addSubview(collectionView)
        collectionView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }

    // MARK: - UICollectionViewDataSource
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return datas.count * datas.count
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: NumberViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: identifierString, for: indexPath) as! NumberViewCell
        cell.setValue(numbers: [datas[indexPath.item / 9][indexPath.item % 9]])
        cell.setBorder(indexPath: indexPath)
        return cell;
    }

    // MARK: - UICollectionViewDelegate

    // MARK: - UICollectionViewDelegateFlowLayout
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constants.columnWidth, height: Constants.columnWidth)
    }

    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }

    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
