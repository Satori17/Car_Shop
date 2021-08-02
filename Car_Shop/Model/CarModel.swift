//
//  CarModel.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 30.07.21.
//

import UIKit


class ManufacturerCountry {
    var logo: UIImage!
    var brandName: String!
    var quantity: Int? = 0
        
    init(logo:UIImage, brandName:String, quantity:Int?=0) {
        self.logo = logo
        self.brandName = brandName
        self.quantity = quantity
    }
}



class Car: ManufacturerCountry {
    
    var image: UIImage!
    var carName: String!
    var price: Int? = 0
    
    
    
    init(image:UIImage, carName:String, price:Int?=0, quantity:Int?=0, logo: UIImage, brandName:String) {
        self.image = image
        self.carName = carName
        self.price = price
        super.init(logo: logo, brandName: brandName, quantity: quantity)
       
    }
    
}
