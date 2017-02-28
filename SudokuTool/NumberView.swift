//
//  NumberView.swift
//  SudokuTool
//
//  Created by wenyou on 2017/2/17.
//  Copyright © 2017年 wenyou. All rights reserved.
//

import UIKit
import SnapKit

class NumberView: UIView {
    let numberLabels = Array(repeating: UILabel(), count: 9)
    let numberLabel = UILabel()

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .green

        addSubview(numberLabel)
        numberLabel.backgroundColor = .clear
        numberLabel.textAlignment = .center
        numberLabel.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }

        // lazy 加载
//        for i in 0 ..< numberLabels.count {
//            addSubview(numberLabels[i])
//            numberLabels[i].backgroundColor = .clear
//            numberLabels[i].isHidden = true
//            numberLabels[i].text = "\(i + 1)"
//            numberLabels[i].snp.makeConstraints({ (make) in
//                switch i / 3 {
//                case 0:
//                    make.top.equalToSuperview()
//                    make.height.equalToSuperview().multipliedBy(1 / 3)
//                case 1:
//                    make.top.equalTo(numberLabels[i - 3].snp.bottom)
//                    make.bottom.equalTo(numberLabels[i + 3].snp.top)
//                case 2:
//                    make.bottom.equalToSuperview()
//                    make.height.equalToSuperview().multipliedBy(1 / 3)
//                default:
//                    break
//                }
//
//                switch i % 3 {
//                case 0:
//                    make.left.equalToSuperview()
//                    make.width.equalToSuperview().multipliedBy(1 / 3)
//                case 1:
//                    make.left.equalTo(numberLabels[i - 1].snp.right)
//                    make.right.equalTo(numberLabels[i + 1].snp.left)
//                case 2:
//                    make.right.equalToSuperview()
//                    make.width.equalToSuperview().multipliedBy(1 / 3)
//                default:
//                    break
//                }
//            })
//        }
    }

//    func setBorder(indexPath: NSIndexPath) {
//        backgroundColor = .green
//        layer.borderColor = UIColor.white.cgColor
//        layer.borderWidth = 1
//        clipsToBounds = true
//    }

    func setValue(numbers: [Int]) {
        numberLabel.text = nil
        numberLabels.forEach { (label) in
            label.isHidden = true
        }
        if numbers.count == 1 {
            numberLabel.text = "\(numbers[0])"
        } else {
            numbers.forEach({ (number) in
                numberLabels[number - 1].isHidden = false
            })
        }
    }
}
