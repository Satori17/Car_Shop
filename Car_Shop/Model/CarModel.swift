//
//  CarModel.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 30.07.21.
//

import UIKit



enum Manufacturer {
    case Germany
    case Italy
    case USA
}



class Country {
    var manufacturer: Manufacturer!
    var logo: UIImage!
    var name: String!
    var quantity: Int? = 0
    //var brand: [Car]!
    
    
    init(manufacturer:Manufacturer, logo:UIImage, name:String, quantity:Int?=0 /*brand:[Car]!*/) {
        self.manufacturer = manufacturer
        self.logo = logo
        self.name = name
        self.quantity = quantity
        // self.brand = brand
    }
}

//var allCountries = [ Country(manufacturer: .Germany, logo: #imageLiteral(resourceName: "BMW"), name: "BMW"),
//                     Country(manufacturer: .Germany, logo: #imageLiteral(resourceName: "Mercedes"), name: "MERCEDES"),
//                     Country(manufacturer: .Germany, logo: #imageLiteral(resourceName: "Audi"), name: "AUDI"),
//                     Country(manufacturer: .Italy, logo: #imageLiteral(resourceName: "Ferrari"), name: "FERRARI"),
//                     Country(manufacturer: .Italy, logo: #imageLiteral(resourceName: "alfa_romeo"), name: "ALFA ROMEO"),
//                     Country(manufacturer: .Italy, logo: #imageLiteral(resourceName: "lamborghini"), name: "LAMBORGHINI"),
//                     Country(manufacturer: .USA, logo: #imageLiteral(resourceName: "chevrolet"), name: "CHEVROLET"),
//                     Country(manufacturer: .USA, logo: #imageLiteral(resourceName: "tesla"), name: "TESLA"),
//                     Country(manufacturer: .USA, logo: #imageLiteral(resourceName: "ford"), name: "FORD")]



var germanCars = [ Country(manufacturer: .Germany, logo: #imageLiteral(resourceName: "BMW"), name: "BMW"),
                   Country(manufacturer: .Germany, logo: #imageLiteral(resourceName: "Mercedes"), name: "MERCEDES"),
                   Country(manufacturer: .Germany, logo: #imageLiteral(resourceName: "Audi"), name: "AUDI")]
var italianCars = [ Country(manufacturer: .Italy, logo: #imageLiteral(resourceName: "Ferrari"), name: "FERRARI"),
                    Country(manufacturer: .Italy, logo: #imageLiteral(resourceName: "alfa_romeo"), name: "ALFA ROMEO"),
                    Country(manufacturer: .Italy, logo: #imageLiteral(resourceName: "lamborghini"), name: "LAMBORGHINI")]
var usaCars = [ Country(manufacturer: .USA, logo: #imageLiteral(resourceName: "chevrolet"), name: "CHEVROLET"),
                Country(manufacturer: .USA, logo: #imageLiteral(resourceName: "tesla"), name: "TESLA"),
                Country(manufacturer: .USA, logo: #imageLiteral(resourceName: "ford"), name: "FORD")]



class Car {
    var manufacturer: Manufacturer!
    var image: UIImage!
    var name: String!
    var price: Int!
    var quantity: Int? = 0
    
    init(manufacturer: Manufacturer, image:UIImage, name: String, price: Int, quantity: Int?=0) {
        self.manufacturer = manufacturer
        self.image = image
        self.name = name
        self.price = price
        self.quantity = quantity
    }
    
    
    
    
    
    //    class GermanCar: Car {
    //
    //        override init(manufacturer: Manufacturer = .Germany, image: UIImage, name: String, price: Int, quantity: Int? = 0) {
    //            super.init(manufacturer: manufacturer, image: image, name: name, price: price)
    //            self.manufacturer = manufacturer
    //            self.image = image
    //            self.name = name
    //            self.price = price
    //            self.quantity = quantity
    //        }
    //    }
    //
    //    var bmw = [ GermanCar(image: #imageLiteral(resourceName: "Z4"), name: "Z4", price: 24000),
    //                GermanCar(image: #imageLiteral(resourceName: "X5"), name: "X5", price: 35000),
    //                GermanCar(image: #imageLiteral(resourceName: "Coupe"), name: "Coupe", price: 15000)]
    //    var mercedes = [ GermanCar(image: #imageLiteral(resourceName: "A Class"), name: "A Class", price: 40000),
    //                     GermanCar(image: #imageLiteral(resourceName: "E Class"), name: "E Class", price: 55000),
    //                     GermanCar(image: #imageLiteral(resourceName: "AMG Sport"), name: "AMG Sport", price: 40000)]
    //    var audi = [ GermanCar(image: #imageLiteral(resourceName: "Q3"), name: "Q3", price: 20000),
    //                 GermanCar(image: #imageLiteral(resourceName: "A1"), name: "A1", price: 25000),
    //                 GermanCar(image: #imageLiteral(resourceName: "R8"), name: "R8", price: 60000)]
    //
    //
    //
    //    class ItalianCar: Car {
    //
    //        override init(manufacturer: Manufacturer = .Italy, image: UIImage, name: String, price: Int, quantity: Int? = 0) {
    //            super.init(manufacturer: manufacturer, image: image, name: name, price: price)
    //            self.manufacturer = manufacturer
    //            self.image = image
    //            self.name = name
    //            self.price = price
    //            self.quantity = quantity
    //        }
    //    }
    
    //    var ferrari = [ ItalianCar(image: <#T##UIImage#>, name: "488 GTB", price: 75000),
    //                    ItalianCar(image: <#T##UIImage#>, name: "F60", price: 120000),
    //                    ItalianCar(image: <#T##UIImage#>, name: "F12berlinetta", price: 64000)]
    //
    //    var alfaRomeo = [ ItalianCar(image: <#T##UIImage#>, name: "Sport", price: 30000),
    //                      ItalianCar(image: <#T##UIImage#>, name: "Giuletta", price: 40000),
    //                      ItalianCar(image: <#T##UIImage#>, name: "4C", price: 62000)]
}

