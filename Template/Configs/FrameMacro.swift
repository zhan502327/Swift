//
//  Macro.swift
//  Template
//
//  Created by zhandb on 2023/7/18.
//

import UIKit


/// 屏幕宽度
let kWidth = UIScreen.main.bounds.width

/// 屏幕高度
let kHeight = UIScreen.main.bounds.height



/// 状态栏高度。非刘海屏20，X是44，11是48，12之后是47
let kStatusBarHeight = STATUSBAR_HEIGHT()
let kBottomSafeHeight = INDICATOR_HEIGHT()


 
/// 状态栏高度。X是44，其他是20
func STATUSBAR_HEIGHT() ->CGFloat {
    if #available(iOS 13.0, *) {
        return getWindow()?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
    } else {
        return UIApplication.shared.statusBarFrame.height
    }
}
/// 底部指示条高度
func INDICATOR_HEIGHT() ->CGFloat {
    if #available(iOS 11.0, *) {
        return getWindow()?.safeAreaInsets.bottom ?? 0
    } else {
        return 0
    }
}


/// 获取当前设备window用于判断尺寸
func getWindow() -> UIWindow? {
    if #available(iOS 13.0, *) {
        let winScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        return winScene?.windows.first
    } else {
        return UIApplication.shared.keyWindow
    }
}
