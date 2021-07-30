//
//  CarModel.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 30.07.21.
//

import UIKit



class ManufacturerCountry {
    var logo: UIImage!
    var name: String!
    var quantity: Int? = 0
    
    init(logo:UIImage, name:String, quantity:Int?=0) {
        self.logo = logo
        self.name = name
        self.quantity = quantity
    }
}



class Car {
    
    var image: UIImage!
    var name: String!
    var price: Int!
    var quantity: Int? = 0
    
    init(image:UIImage, name: String, price: Int, quantity: Int?=0) {
        self.image = image
        self.name = name
        self.price = price
        self.quantity = quantity
    }
    
    var bmwCars = [Car(image: #imageLiteral(resourceName: "Z4"), name: "Z4", price: 24000),
                   Car(image: #imageLiteral(resourceName: "X5"), name: "X5", price: 35000),
                   Car(image: #imageLiteral(resourceName: "Coupe"), name: "Coupe", price: 15000)]
    var mercedesCars = [Car(image: #imageLiteral(resourceName: "A Class"), name: "A Class", price: 40000),
                        Car(image: #imageLiteral(resourceName: "E Class"), name: "E Class", price: 55000),
                        Car(image: #imageLiteral(resourceName: "AMG Sport"), name: "AMG Sport", price: 42000)]
    var audiCars = [Car(image: #imageLiteral(resourceName: "Q3"), name: "Q3", price: 20000),
                    Car(image: #imageLiteral(resourceName: "A1"), name: "A1", price: 25000),
                    Car(image: #imageLiteral(resourceName: "R8"), name: "R8", price: 60000)]
    
    
    var ferrariCars = [Car(image: #imageLiteral(resourceName: "488 GTB"), name: "488 GTB", price: 75000),
                       Car(image: #imageLiteral(resourceName: "F60"), name: "F60", price: 120000),
                       Car(image: #imageLiteral(resourceName: "F12berlinetta"), name: "F12berlinetta", price: 64000)]
    var alfaRomeoCars = [Car(image: #imageLiteral(resourceName: "Sport"), name: "Sport", price: 30000),
                         Car(image: #imageLiteral(resourceName: "Giulietta"), name: "Giulietta", price: 40000),
                         Car(image: #imageLiteral(resourceName: "4C"), name: "4C", price: 62000)]
    var lamborghiniCars = [Car(image: #imageLiteral(resourceName: "Aventador"), name: "Aventador", price: 30000),
                           Car(image: #imageLiteral(resourceName: "Huracan"), name: "Huracan", price: 40000),
                           Car(image: #imageLiteral(resourceName: "Centenario"), name: "Centenario", price: 62000)]
    
    
    var fordCars = [Car(image: #imageLiteral(resourceName: "Focus"), name: "Focus", price: 18000),
                    Car(image: #imageLiteral(resourceName: "Mustang"), name: "Mustang", price: 35000),
                    Car(image: #imageLiteral(resourceName: "Ranger"), name: "Ranger", price: 30000)]
    var teslaCars = [Car(image: #imageLiteral(resourceName: "Model 3"), name: "Model 3", price: 40000),
                     Car(image: #imageLiteral(resourceName: "Model S"), name: "Model S", price: 50000),
                     Car(image: #imageLiteral(resourceName: "Model X"), name: "Model X", price: 62000)]
    var chevroletCars = [Car(image: #imageLiteral(resourceName: "Camaro"), name: "Camaro", price: 45000),
                         Car(image: #imageLiteral(resourceName: "Corvette C7"), name: "Corvette C7", price: 37000),
                         Car(image: #imageLiteral(resourceName: "Pickup"), name: "Pickup", price: 28000)]
    
}

