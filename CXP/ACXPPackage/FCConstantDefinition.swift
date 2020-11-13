//
//  FCConstantDefinition.swift
//  FlyCatAdministration
//
//  Created by Yochi on 2018/9/4.
//  Copyright © 2018年 Yochi. All rights reserved.
//

import Foundation
import UtilsXP

func printLog<T>(_ message: T,
                 file: String = #file,
                 method: String = #function,
                 line: Int = #line) {
    #if DEBUG
    print("\((file as NSString).lastPathComponent)[\(line)], \(method): \(message)")
    #endif
}

public func isPhoneX() -> Bool {
    
    if UIScreen.main.bounds.height >= 812 {
        return true
    }
    return false
}

// 回调
typealias kFCBlock = () -> Void

///尺寸
public let kSCREENWIDTH = UIScreen.main.bounds.size.width

public let kSCREENHEIGHT = UIScreen.main.bounds.size.height

public let kSTATUSHEIGHT = UIApplication.shared.statusBarFrame.size.height


public let kMarginScreenLR = 16.0

public let kNAVIGATIONHEIGHT: CGFloat = isPhoneX() ? 88 : 64

public let KSTATUSBARHEIGHT: CGFloat = isPhoneX() ? 44 : 20

let kAPPDELEGATE = UIApplication.shared.delegate as? AppDelegate

public let kTABBARHEIGHT = kAPPDELEGATE?.tabBarViewController.tabBar.frame.height ?? 49

///过滤null的字符串，当nil时返回一个初始化的空字符串
public let kFilterNullOfString:((Any)->String) = {(obj: Any) -> String in
    if obj is String {
        return obj as! String
    }
    return ""
}

/// 过滤null的数组，当nil时返回一个初始化的空数组
public let kFilterNullOfArray:((Any)->Array<Any>) = {(obj: Any) -> Array<Any> in
    if obj is Array<Any> {
        return obj as! Array<Any>
    }
    return Array()
}

/// 过滤null的字典，当为nil时返回一个初始化的字典
public let kFilterNullOfDictionary:((Any) -> Dictionary<AnyHashable, Any>) = {( obj: Any) -> Dictionary<AnyHashable, Any> in
    if obj is Dictionary<AnyHashable, Any> {
        return obj as! Dictionary<AnyHashable, Any>
    }
    return Dictionary()
}

/**************颜色值******************/
public func COLOR_HexColor(_ rgbValue: Int) -> (UIColor) {
    
    return UIColor(red: ((CGFloat)((rgbValue & 0xFF0000) >> 16)) / 255.0,
                   green: ((CGFloat)((rgbValue & 0xFF00) >> 8)) / 255.0,
                   blue: ((CGFloat)(rgbValue & 0xFF)) / 255.0,
                   alpha: 1.0)
}

public func COLOR_HexColorAlpha(_ rgbValue: Int, alpha: CGFloat) -> (UIColor) {
    
    return UIColor(red: ((CGFloat)((rgbValue & 0xFF0000) >> 16)) / 255.0,
                   green: ((CGFloat)((rgbValue & 0xFF00) >> 8)) / 255.0,
                   blue: ((CGFloat)(rgbValue & 0xFF)) / 255.0,
                   alpha: alpha)
}

/** 白色 */
public let COLOR_White = COLOR_HexColor(0xffffff)

/** 透明色 */
public let COLOR_Clear = UIColor.clear

/** 背景色 */
public let COLOR_BACKGROUNDColor = COLOR_HexColor(0xf2f2f2)

/** 背景色 */
public let COLOR_BGColor = COLOR_HexColor(0x191B20)
    //COLOR_HexColor(0x101114)//

/** tabbar颜色 */
public let COLOR_TabBarBgColor  = COLOR_HexColor(0x141416)

/** 背景色 */
public let COLOR_TabBarTintColor  = COLOR_HexColor(0xFEC92D)//COLOR_HexColor(0xFFB718)

/** TabBar选择色 */
public let COLOR_tabbarNormalColor = COLOR_HexColor(0xFFAD17)

/** 导航栏背景色 */
public let COLOR_navBgColor = COLOR_HexColor(0x191B20)
//COLOR_HexColor(0x101114)
/** page 黄色 */
public let COLOR_YELLOWColor = COLOR_HexColor(0xF4B043)

/** 主要按钮文字颜色（黑色） **/
public let COLOR_ThemeBtnTextColor = COLOR_HexColor(0x131318)

/** 主要按钮左侧颜色 **/
public let COLOR_ThemeBtnStartColor = COLOR_HexColor(0xFFBF17)

/** 主要按钮右侧颜色 **/
public let COLOR_ThemeBtnEndColor = COLOR_HexColor(0xFFAD17)

/** 主要按钮右侧颜色 **/
public let COLOR_ThemeBtnBgColor = COLOR_HexColor(0xFFC017)

/** 按钮文字颜色 **/
public let COLOR_BtnTitleColor = COLOR_HexColor(0xFFB517)

/** 文字按钮颜色(图文按钮) **/
public let COLOR_RichBtnTitleColor = COLOR_HexColor(0x696A6D)

/** 主要文字颜色（白色） **/
public let COLOR_PrimeTextColor = COLOR_HexColor(0xffffff)

/** 次要文字颜色(浅灰) **/
public let COLOR_MinorTextColor = COLOR_HexColor(0x69696D)

/** 图标坐标刻度数值颜色*/
public let COLOR_ChartAxisColor = COLOR_HexColor(0xDADADD)

/** 图标辅助说明文案颜色*/
public let COLOR_CharTipsColor = COLOR_HexColor(0x8F9698)


/** 页脚文字颜色(浅灰) **/
public let COLOR_FooterTextColor = COLOR_HexColor(0x58595C)

/** 次要文字颜色(紫红) **/
public let COLOR_TipsTextColor = COLOR_HexColor(0xEA1751)

/** cell的背景颜色 水槽颜色 **/
public let COLOR_SectionFooterBgColor = COLOR_HexColor(0x141416)

/** cell的背景颜色 **/
public let COLOR_CellBgColor = COLOR_HexColor(0x191A1C)//COLOR_HexColor(0x191B20)

/** cell的title颜色 **/
public let COLOR_CellTitleColor = COLOR_HexColor(0xB0B1B4)

/** cell的message颜色 **/
public let COLOR_CellMessageColor = COLOR_HexColor(0xB0B1B4)

/** 高亮色 */
public let COLOR_HighlightColor = COLOR_HexColor(0xffad17)

/** 副标题文字颜色(黑色) **/
public let COLOR_subTitleColor = COLOR_HexColor(0x4D4D4D )

/** 线条分割线颜色 */
public let COLOR_LineColor = COLOR_HexColorAlpha(0xffffff, alpha: 0.05)

/** 线条分割线颜色 */
public let COLOR_SeperateColor = COLOR_HexColor(0x262830)

/** 输入框颜色 */
public let COLOR_InputColor = COLOR_HexColor(0xcccccc)

/**输入框border颜色*/
public let COLOR_InputBorder = COLOR_HexColor(0x434343)

/**输入框文本颜色*/
public let COLOR_InputText = COLOR_HexColor(0xDADADD)

/** 涨跌幅颜色 */
public let COLOR_RiseColor = COLOR_HexColor(0x2AB462)

public let COLOR_BGRiseColor = COLOR_HexColorAlpha(0x2AB462, alpha: 1.0)
//COLOR_HexColor(0x2AB462)
public let COLOR_FailColor = COLOR_HexColor(0xFB4B50)
public let COLOR_BGFailColor = COLOR_HexColorAlpha(0xFB4B50, alpha: 1.0)
//COLOR_HexColor(0xFB4B50)

/// 是否固定全仓 
public let onlyCross = true

class FCConstantDefinition: NSObject {
    
    @objc static public func HOSTURL_OC_SPOT() -> String {
        
        return FCNetAddress.netAddresscl().hosturl_SPOT
    }
}
