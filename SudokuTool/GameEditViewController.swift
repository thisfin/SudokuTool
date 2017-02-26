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
            make.left.equalToSuperview().offset(Constants.columnPadding)
            make.right.equalToSuperview().offset(0 - Constants.columnPadding)
            make.top.equalToSuperview().offset(100)
            make.height.equalTo(boardView.snp.width)
        }
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
}
