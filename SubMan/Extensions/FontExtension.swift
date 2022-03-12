//
//  FontExtension.swift
//  SubMan
//
//  Created by Fitzgerald Afful on 11/03/2022.
//

import Foundation
import SwiftUI

extension Font {
    static func sfProBold(size: Int = 18) -> Font {
        return self.system(size: CGFloat(size), weight: .bold, design: .default)
    }

    static func sfProRegular(size: Int = 18) -> Font {
        return self.system(size: CGFloat(size), weight: .regular, design: .default)
    }

    static func baseFontAction(name: String, size: Int) -> Font {
        return Font.custom(name, size: CGFloat(size))
    }
}

extension Text {

    func largeBoldFont(color: Color = .darkGrey, size: Int = 36) -> Text {
        self.font(.sfProBold(size: size))
            .foregroundColor(color)
    }

    func defaultFont(color: Color = .darkGrey, size: Int = 16) -> Text {
        self.font(.sfProRegular(size: size))
            .foregroundColor(color)
    }

    func mediumBoldFont(color: Color = .black, size: Int = 20) -> Text {
        self.font(.sfProBold(size: size))
            .foregroundColor(color)
    }

    func defaultBoldFont(color: Color = .white, size: Int = 16) -> Text {
        self.font(.sfProBold(size: size))
            .foregroundColor(color)
    }
}
