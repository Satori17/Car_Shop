//
//  CarModel.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 30.07.21.
//

import UIKit

class Country {
    var name: String!
    var manufacturer: [ManufacturerCountry]!
    
    init(name:String,manufacturer:[ManufacturerCountry]) {
        self.name = name
        self.manufacturer = manufacturer
    }
}

class ManufacturerCountry {
    var logo: UIImage!
    var brandName: String!
    var quantity: Int? = 0
    var cars: [Car]!
    
    init(logo:UIImage, brandName:String, quantity:Int?=0, cars: [Car]) {
        self.logo = logo
        self.brandName = brandName
        self.quantity = quantity
        self.cars = cars
        
    }
}

class Car {
    var image: UIImage!
    var logo: UIImage!
    var carName: String!
    var price: Int!
    var carQuantity: Int?=0
    
    
    init(image:UIImage, logo:UIImage, carName:String, price:Int, carQuantity:Int?=0) {
        self.image = image
        self.logo = logo
        self.carName = carName
        self.price = price
        self.carQuantity = carQuantity
    }
}

//Germany
let bmw1 = Car(image: #imageLiteral(resourceName: "Z4"), logo: #imageLiteral(resourceName: "BMW"), carName: "BMW Z4", price: 24000)
let bmw2 = Car(image: #imageLiteral(resourceName: "X5"), logo: #imageLiteral(resourceName: "BMW"), carName: "BMW X5", price: 35000)
let bmw3 = Car(image: #imageLiteral(resourceName: "Coupe"), logo: #imageLiteral(resourceName: "BMW"), carName: "BMW Coupe", price: 15000)
let bmwCars = ManufacturerCountry(logo: #imageLiteral(resourceName: "BMW"), brandName: "BMW", cars: [bmw1,bmw2,bmw3])

let mercedes1 = Car(image: #imageLiteral(resourceName: "A Class"), logo: #imageLiteral(resourceName: "Mercedes"), carName: "Mercedes A Class", price: 40000)
let mercedes2 = Car(image: #imageLiteral(resourceName: "E Class"), logo: #imageLiteral(resourceName: "Mercedes"), carName: "Mercedes E Class", price: 55000)
let mercedes3 = Car(image: #imageLiteral(resourceName: "AMG Sport"), logo: #imageLiteral(resourceName: "Mercedes"), carName: "Mercedes AMG Sport", price: 42000)
let mercedesCars = ManufacturerCountry(logo: #imageLiteral(resourceName: "Mercedes"), brandName: "MERCEDES", cars: [mercedes1,mercedes2,mercedes3])

let audi1 = Car(image: #imageLiteral(resourceName: "Q3"), logo: #imageLiteral(resourceName: "Audi"), carName: "Audi Q3", price: 20000)
let audi2 = Car(image: #imageLiteral(resourceName: "A1"), logo: #imageLiteral(resourceName: "Audi"), carName: "Audi A1", price: 25000)
let audi3 = Car(image: #imageLiteral(resourceName: "R8"), logo: #imageLiteral(resourceName: "Audi"), carName: "Audi R8", price: 60000)
let audiCars = ManufacturerCountry(logo: #imageLiteral(resourceName: "Audi"), brandName: "AUDI", cars: [audi1,audi2,audi3])

let germanCars = Country(name: "Germany 🇩🇪", manufacturer: [bmwCars,mercedesCars,audiCars])


//Italy
let ferrari1 = Car(image: #imageLiteral(resourceName: "488 GTB"), logo: #imageLiteral(resourceName: "Ferrari"), carName: "Ferrari 488 GTB", price: 75000)
let ferrari2 = Car(image: #imageLiteral(resourceName: "F60"), logo: #imageLiteral(resourceName: "Ferrari"), carName: "Ferrari F60", price: 120000)
let ferrari3 = Car(image: #imageLiteral(resourceName: "F12berlinetta"), logo: #imageLiteral(resourceName: "Ferrari"), carName: "Ferrari berlinetta", price: 64000)
let ferrariCars = ManufacturerCountry(logo: #imageLiteral(resourceName: "Ferrari"), brandName: "FERRARI", cars: [ferrari1,ferrari2,ferrari3])


let alfaromeo1 = Car(image: #imageLiteral(resourceName: "Sport"), logo: #imageLiteral(resourceName: "alfa_romeo"), carName: "Alfa Romeo Sport", price: 30000)
let alfaromeo2 = Car(image: #imageLiteral(resourceName: "Giulietta"), logo: #imageLiteral(resourceName: "alfa_romeo"), carName: "Alfa Romeo Giulietta", price: 40000)
let alfaromeo3 = Car(image: #imageLiteral(resourceName: "4C"), logo: #imageLiteral(resourceName: "alfa_romeo"), carName: "Alfa Romeo 4C", price: 62000)
let alfaromeoCars = ManufacturerCountry(logo: #imageLiteral(resourceName: "alfa_romeo"), brandName: "ALFA ROMEO", cars: [alfaromeo1,alfaromeo2,alfaromeo3])


let lamborghini1 = Car(image: #imageLiteral(resourceName: "Aventador"), logo: #imageLiteral(resourceName: "lamborghini"), carName: "Lamborghini Aventador", price: 30000)
let lamborghini2 = Car(image: #imageLiteral(resourceName: "Huracan"), logo: #imageLiteral(resourceName: "lamborghini"), carName: "Lamborghini Huracan", price: 40000)
let lamborghini3 = Car(image: #imageLiteral(resourceName: "Centenario"), logo: #imageLiteral(resourceName: "lamborghini"), carName: "Lamborghini Veneno", price: 62000)
let lamborghiniCars = ManufacturerCountry(logo: #imageLiteral(resourceName: "lamborghini"), brandName: "LAMBORGHINI", cars: [lamborghini1,lamborghini2,lamborghini3])

let italianCars = Country(name: "Italy 🇮🇹", manufacturer: [ferrariCars,alfaromeoCars,lamborghiniCars])


//USA
let chevrolet1 = Car(image: #imageLiteral(resourceName: "Camaro"), logo: #imageLiteral(resourceName: "chevrolet"), carName: "Chevrolet Camaro", price: 45000)
let chevrolet2 = Car(image: #imageLiteral(resourceName: "Corvette C7"), logo: #imageLiteral(resourceName: "chevrolet"), carName: "Chevrolet Corvette C7", price: 37000)
let chevrolet3 = Car(image: #imageLiteral(resourceName: "Pickup"), logo: #imageLiteral(resourceName: "chevrolet"), carName: "Chevrolet Pickup", price: 28000)
let chevroletCars = ManufacturerCountry(logo: #imageLiteral(resourceName: "chevrolet"), brandName: "CHEVROLET", cars: [chevrolet1,chevrolet2,chevrolet3])

let tesla1 = Car(image: #imageLiteral(resourceName: "Model 3"), logo: #imageLiteral(resourceName: "tesla"), carName: "Tesla Model 3", price: 40000)
let tesla2 = Car(image: #imageLiteral(resourceName: "Model S"), logo: #imageLiteral(resourceName: "tesla"), carName: "Tesla Model S", price: 50000)
let tesla3 = Car(image: #imageLiteral(resourceName: "Model X"), logo: #imageLiteral(resourceName: "tesla"), carName: "Tesla Model X", price: 62000)
let teslaCars = ManufacturerCountry(logo: #imageLiteral(resourceName: "tesla"), brandName: "TESLA", cars: [tesla1,tesla2,tesla3])

let ford1 = Car(image: #imageLiteral(resourceName: "Focus"), logo: #imageLiteral(resourceName: "ford"), carName: "Ford Focus", price: 18000)
let ford2 = Car(image: #imageLiteral(resourceName: "Mustang"), logo: #imageLiteral(resourceName: "ford"), carName: "Ford Mustang", price: 35000)
let ford3 = Car(image: #imageLiteral(resourceName: "Ranger"), logo: #imageLiteral(resourceName: "ford"), carName: "Ford Ranger", price: 30000)
let fordCars = ManufacturerCountry(logo: #imageLiteral(resourceName: "ford"), brandName: "FORD", cars: [ford1,ford2,ford3])

let usaCars = Country(name: "USA 🇺🇸", manufacturer: [chevroletCars,teslaCars,fordCars])


let allCountry = [germanCars,italianCars,usaCars]

