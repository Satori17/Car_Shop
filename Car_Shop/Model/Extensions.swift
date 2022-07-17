//
//  Extensions.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 17.07.22.
//

import UIKit

extension UIButton {
    func changeUI(withBorder: Bool) {
        self.layer.cornerRadius = 25
        self.layer.borderWidth = withBorder ? 5 : 0
        self.layer.shadowColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.5).cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        self.layer.shadowOpacity = 1.0        
    }
}
