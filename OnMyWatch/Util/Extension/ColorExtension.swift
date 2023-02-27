//
//  ColorExtension.swift
//  OnMyWatch
//
//  Created by Damian on 27/2/23.
//

import SwiftUI

extension Color {
    
    // Colors
    
    static let primaryColor = Color("AccentColor")
    static let secondaryColor = Color("SecondaryColor")
    static let lightColor = Color("LightColor")
    static let darkColor = Color("DarkColor")
    static let textColor = Color("TextColor")
    static let backgroundColor = Color("BackgroundColor")
    static let secondaryBackgroundColor = Color("SecondaryBackgroundColor")
    static let liveColor = Color("LiveColor")
    
    // Util
    
    var uiColor: UIColor {
        return UIColor(self)
    }
    
    //Using Hex colors
    init(hex: Int, opacity: Double = 1.0) {
        let red = Double((hex & 0xff0000) >> 16) / 255.0
        let green = Double((hex & 0xff00) >> 8) / 255.0
        let blue = Double((hex & 0xff) >> 0) / 255.0
        self.init(.sRGB, red: red, green: green, blue: blue, opacity: opacity)
    }
}
