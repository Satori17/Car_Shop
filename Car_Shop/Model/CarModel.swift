//
//  CarModel.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 30.07.21.
//

import UIKit

class Country {
    var name: String
    var manufacturer: [ManufacturerCountry]
    
    init(name: String, manufacturer: [ManufacturerCountry]) {
        self.name = name
        self.manufacturer = manufacturer
    }
}

class ManufacturerCountry {
    var logo: UIImage
    var brandName: String
    var quantity: Int? = 0
    var cars: [Car]
    
    init(brandName: String, quantity: Int?=0, cars: [Car]) {
        logo = UIImage(named: brandName)!
        self.brandName = brandName
        self.quantity = quantity
        self.cars = cars
        
    }
}

class Car {
    var image: UIImage
    var logo: UIImage
    var carName: String
    var price: Int
    var carQuantity: Int?=0
    
    
    init(carName: String, carQuantity: Int?=0) {
        self.carName = carName
        logo = UIImage(named: carName.components(separatedBy: " ")[0])!
        image = UIImage(named: carName)!
        price = Int.random(in: 15000...100000)
        self.carQuantity = carQuantity
    }
}

//Germany
let bmw1 = Car(carName: "BMW Z4")
let bmw2 = Car(carName: "BMW X5")
let bmw3 = Car(carName: "BMW Coupe")
let bmwCars = ManufacturerCountry(brandName: "BMW", cars: [bmw1,bmw2,bmw3])

let mercedes1 = Car(carName: "Mercedes A Class")
let mercedes2 = Car(carName: "Mercedes E Class")
let mercedes3 = Car(carName: "Mercedes AMG Sport")
let mercedesCars = ManufacturerCountry(brandName: "Mercedes", cars: [mercedes1,mercedes2,mercedes3])

let audi1 = Car(carName: "Audi Q3")
let audi2 = Car(carName: "Audi A1")
let audi3 = Car(carName: "Audi R8")
let audiCars = ManufacturerCountry(brandName: "Audi", cars: [audi1,audi2,audi3])

let germanCars = Country(name: "Germany 🇩🇪", manufacturer: [bmwCars,mercedesCars,audiCars])


//Italy
let ferrari1 = Car(carName: "Ferrari 488 GTB")
let ferrari2 = Car(carName: "Ferrari F60")
let ferrari3 = Car(carName: "Ferrari Berlinetta")
let ferrariCars = ManufacturerCountry(brandName: "Ferrari", cars: [ferrari1,ferrari2,ferrari3])


let alfaromeo1 = Car(carName: "AlfaRomeo Sport")
let alfaromeo2 = Car(carName: "AlfaRomeo Giulietta")
let alfaromeo3 = Car(carName: "AlfaRomeo 4C")
let alfaromeoCars = ManufacturerCountry(brandName: "AlfaRomeo", cars: [alfaromeo1,alfaromeo2,alfaromeo3])


let lamborghini1 = Car(carName: "Lamborghini Aventador")
let lamborghini2 = Car(carName: "Lamborghini Huracan")
let lamborghini3 = Car(carName: "Lamborghini Veneno")
let lamborghiniCars = ManufacturerCountry(brandName: "Lamborghini", cars: [lamborghini1,lamborghini2,lamborghini3])

let italianCars = Country(name: "Italy 🇮🇹", manufacturer: [ferrariCars,alfaromeoCars,lamborghiniCars])


//USA
let chevrolet1 = Car(carName: "Chevrolet Camaro")
let chevrolet2 = Car(carName: "Chevrolet Corvette C7")
let chevrolet3 = Car(carName: "Chevrolet Pickup")
let chevroletCars = ManufacturerCountry(brandName: "Chevrolet", cars: [chevrolet1,chevrolet2,chevrolet3])

let tesla1 = Car(carName: "Tesla Model 3")
let tesla2 = Car(carName: "Tesla Model S")
let tesla3 = Car(carName: "Tesla Model X")
let teslaCars = ManufacturerCountry(brandName: "Tesla", cars: [tesla1,tesla2,tesla3])

let ford1 = Car(carName: "Ford Focus")
let ford2 = Car(carName: "Ford Mustang")
let ford3 = Car(carName: "Ford Ranger")
let fordCars = ManufacturerCountry(brandName: "Ford", cars: [ford1,ford2,ford3])

let usaCars = Country(name: "USA 🇺🇸", manufacturer: [chevroletCars,teslaCars,fordCars])


let allCountry = [germanCars,italianCars,usaCars]

