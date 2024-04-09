//
//  Theme.swift
//  NavigationUIKit
//
//  Created by Айгерим on 09.04.2024.
//

import Foundation
import UIKit
protocol ThemeProtokol {
    var backroundColor: UIColor { get }
}
class Theme {
    static var currentColor: ThemeProtokol = ColorSetForButton()
}
