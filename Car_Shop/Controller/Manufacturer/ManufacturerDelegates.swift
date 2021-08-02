//
//  ManufacturerDelegates.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 01.08.21.
//

import UIKit

extension ManufacturerVC: QuantityDelegate   {
   
    func quantityController(cars: CarsVC) {
        //German Cars Quantity
        var sum = 0
        if cars.countryIndex == 0 {
            for item in cars.germanCars[0] {
                
                if  cars.carIndex == 0 && item.quantity! > 0 {
                    sum += item.quantity!
                    germanBrands[0].quantity! = sum

                    
                }
            }
            for item in cars.germanCars[1] {
                if cars.carIndex == 1 && item.quantity! > 0 {
                    sum += item.quantity!
                    germanBrands[1].quantity! = sum
                }
            }
            for item in cars.germanCars[2] {
                if cars.carIndex == 2 && item.quantity! > 0 {
                    sum += item.quantity!
                    germanBrands[2].quantity! = sum
                }
            }
        }
        
        //Italian Cars Quantity
        if cars.countryIndex == 1 {
            for item in cars.italianCars[0] {
                if  cars.carIndex == 0 && item.quantity! > 0 {
                    sum += item.quantity!
                    italianBrands[0].quantity! = sum
                    
                }
            }
            
            for item in cars.italianCars[1] {
                if  cars.carIndex == 1 && item.quantity! > 0 {
                    sum += item.quantity!
                    italianBrands[1].quantity! = sum
                    
                }
            }
            for item in cars.italianCars[2] {
                if  cars.carIndex == 2 && item.quantity! > 0 {
                    sum += item.quantity!
                    italianBrands[2].quantity! = sum
                    
                }
            }
        }
        
        //Usa Cars Quantity
        if cars.countryIndex == 2 {
            for item in cars.usaCars[0] {
                if  cars.carIndex == 0 && item.quantity! > 0 {
                    sum += item.quantity!
                    usaBrands[0].quantity! = sum
                }
            }
            
            for item in cars.usaCars[1] {
                if  cars.carIndex == 1 && item.quantity! > 0 {
                    sum += item.quantity!
                    usaBrands[1].quantity! = sum
                }
            }
            for item in cars.usaCars[2] {
                if  cars.carIndex == 2 && item.quantity! > 0 {
                    sum += item.quantity!
                    usaBrands[2].quantity! = sum
                }
            }
        }
        cars.delegate = self
        manufacturerTableView.reloadData()
    }
}

