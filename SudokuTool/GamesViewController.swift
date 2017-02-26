//
//  GamesViewController.swift
//  SudokuTool
//
//  Created by wenyou on 2017/2/26.
//  Copyright © 2017年 wenyou. All rights reserved.
//

import UIKit

class GamesViewController: UIViewController {
    let datas: [[Int]] = Array(repeating: Array(repeating: 0, count: 9), count: 9)

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func getRange(index: Int) -> [Int] {
        let start = index / 3
        var array: [Int] = Array()
        stride(from: start, to: start + 3, by: 1).forEach { (i) in
            array.append(i)
        }
        return array
    }
}
