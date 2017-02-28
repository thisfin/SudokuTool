//
//  GameEditViewController.swift
//  SudokuTool
//
//  Created by wenyou on 2017/2/26.
//  Copyright © 2017年 wenyou. All rights reserved.
//

import UIKit

class GameEditViewController: UIViewController {
    let boardView = BoardView()


    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red

        view.addSubview(boardView)
        boardView.snp.makeConstraints { (make) in
//            make.left.equalToSuperview().offset(Constants.columnPadding)
            make.centerX.equalToSuperview()
            make.width.equalTo(Constants.columnCount * Constants.columnWidth)
//            make.right.equalToSuperview().offset(0 - Constants.columnPadding)
            make.top.equalToSuperview().offset(100)
            make.height.equalTo(Constants.columnCount * Constants.columnWidth)
//            make.height.equalTo(boardView.snp.width)
        }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        setData(data: {
            var iss = Array(repeating: Array(repeating: 0, count: 9), count: 9)

            for x in 0 ..< iss.count {
                for y in 0 ..< iss[x].count {
                    iss[x][y] = (y + 1)
                }
            }
            return iss
        }())
    }

    func setData(data: [[Int]]) {
        boardView.datas = data
        boardView.collectionView.reloadData()
    }
}
