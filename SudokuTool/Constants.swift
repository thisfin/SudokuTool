//
//  Constants.swift
//  SudokuTool
//
//  Created by wenyou on 2017/2/16.
//  Copyright © 2017年 wenyou. All rights reserved.
//

import UIKit


class Constants {
    public static let columnCount: Int = 9
    public static let columnPadding: CGFloat = 20
    public static let columnWidth: Int = lroundf(Float((UIScreen.main.bounds.width - columnPadding * 2) / CGFloat(columnCount)))

//    public static let colorBianchi = UIColor.colorWithHexValue(0x8bddd1)
//
//    public static let iconfontScan = "\u{f029}"
//    public static let iconfontHistory = "\u{f03a}"
//    public static let iconfontlight = "\u{f0e7}"
//    public static let iconfontImage = "\u{f03e}"
//    public static let iconfontDelete = "\u{f014}"
}
