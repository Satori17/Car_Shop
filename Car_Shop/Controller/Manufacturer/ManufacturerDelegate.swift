//
//  ManufacturerDelegates.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 01.08.21.
//

import UIKit

extension ManufacturerVC: QuantityDelegate   {
   
    func quantityController(cars: CarsVC) {
        var sumOfQuantities = 0
        var sumOfPrices = 0
                
        //German Cars Quantity
        if cars.countryIndex == 0 {
            for item in cars.germanCars[0] {
                if  cars.carIndex == 0 && item.quantity! > 0 {
                    germanBrands[0].quantity! += item.quantity!
                    addedCars.append(item)
                }
            }
            for item in cars.germanCars[1] {
                if cars.carIndex == 1 && item.quantity! > 0 {
                    germanBrands[1].quantity! += item.quantity!
                    addedCars.append(item)
                }
            }
            for item in cars.germanCars[2] {
                if cars.carIndex == 2 && item.quantity! > 0 {
                    germanBrands[2].quantity! += item.quantity!
                    addedCars.append(item)
                }
            }
        }
        
        //Italian Cars Quantity
        if cars.countryIndex == 1 {
            for item in cars.italianCars[0] {
                if  cars.carIndex == 0 && item.quantity! > 0 {
                    italianBrands[0].quantity! += item.quantity!
                    addedCars.append(item)
                }
            }
            for item in cars.italianCars[1] {
                if  cars.carIndex == 1 && item.quantity! > 0 {
                    italianBrands[1].quantity! += item.quantity!
                    addedCars.append(item)
                }
            }
            for item in cars.italianCars[2] {
                if  cars.carIndex == 2 && item.quantity! > 0 {
                    italianBrands[2].quantity! += item.quantity!
                    addedCars.append(item)
                }
            }
        }
        
        //Usa Cars Quantity
        if cars.countryIndex == 2 {
            for item in cars.usaCars[0] {
                if  cars.carIndex == 0 && item.quantity! > 0 {
                    usaBrands[0].quantity! += item.quantity!
                    addedCars.append(item)
                }
            }
            for item in cars.usaCars[1] {
                if  cars.carIndex == 1 && item.quantity! > 0 {
                    usaBrands[1].quantity! += item.quantity!
                    addedCars.append(item)
                }
            }
            for item in cars.usaCars[2] {
                if  cars.carIndex == 2 && item.quantity! > 0 {
                    usaBrands[2].quantity! += item.quantity!
                    addedCars.append(item)
                }
            }
        }
        cars.delegate = self
        manufacturerTableView.reloadData()
        
        //Cancel button
        if addedCars.count > 0 {
            cancelBtn.isHidden = false
        }
        
        //Sum of quantity calculation
        for i in addedCars {
                    sumOfQuantities += i.quantity!
                }
                chosenCarQuantityLbl.text = "\(sumOfQuantities)"
        
        //Sum of Price calculation
        for i in addedCars {
            sumOfPrices += i.quantity! * i.price!
        }
        chosenCarsOverallPriceLbl.text = "\(sumOfPrices)$"
    }
}
