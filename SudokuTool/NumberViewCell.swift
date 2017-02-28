//
//  NumberCellView.swift
//  SudokuTool
//
//  Created by wenyou on 2017/2/27.
//  Copyright © 2017年 wenyou. All rights reserved.
//

import UIKit

class NumberViewCell: UICollectionViewCell {
    var numberView: NumberView!

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        contentView.backgroundColor = Constants.borderColor

        numberView = NumberView(frame: .zero)
        contentView.addSubview(numberView)
        numberView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }

    func setBorder(indexPath: IndexPath) {
        numberView.snp.updateConstraints { (make) in
            if (indexPath.item / 9 == 0) {
                make.top.equalToSuperview().offset(Constants.boldBorderWidth)
            } else if (indexPath.item / 9 % 3 == 0) {
                make.top.equalToSuperview().offset(Constants.lightBorderWidth)
            } else {
                make.top.equalToSuperview()
            }

            if (indexPath.item / 9 == 8) {
                make.bottom.equalToSuperview().offset(0 - Constants.boldBorderWidth)
            } else {
                make.bottom.equalToSuperview().offset(0 - Constants.lightBorderWidth)
            }

            if (indexPath.item % 9 == 0) {
                make.left.equalToSuperview().offset(Constants.boldBorderWidth)
            } else if (indexPath.item % 9 % 3 == 0) {
                make.left.equalToSuperview().offset(Constants.lightBorderWidth)
            } else {
                make.left.equalToSuperview()
            }

            if (indexPath.item % 9 == 8) {
                make.right.equalToSuperview().offset(0 - Constants.boldBorderWidth)
            } else {
                make.right.equalToSuperview().offset(0 - Constants.lightBorderWidth)
            }
        }

        let v = indexPath.item / 9
        let h = indexPath.item % 9

        if h > 2 && h < 6 && (v <= 2 || v >= 6) {
            numberView.backgroundColor = Constants.backgroundColorDouble
        } else if (h <= 2 || h >= 6) && v > 2 && v < 6 {
            numberView.backgroundColor = Constants.backgroundColorDouble
        } else {
            numberView.backgroundColor = Constants.backgroundColorSingle
        }
    }
    

    func setValue(numbers: [Int]){
        numberView.setValue(numbers: numbers)
    }
}
