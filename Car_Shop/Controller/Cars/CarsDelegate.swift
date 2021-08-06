//
//  CarsDelegate.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 31.07.21.
//

import UIKit

extension CarsVC: chooseCar {
    
    func addCar(cell: CarCell) {
        let indexPath = carTableView.indexPath(for: cell)
        let index = (indexPath?.row)!
        
        let currentGermanCar = allCountry[countryIndex].manufacturer[carIndex].cars[index]
        if currentGermanCar.carQuantity == nil {
            currentGermanCar.carQuantity = 0
        }
        currentGermanCar.carQuantity! += 1
        carTableView.reloadData()
    }
    
    func removeCar(cell: CarCell) {
        let indexPath = carTableView.indexPath(for: cell)
        let index = (indexPath?.row)!
        
        let currentGerman = allCountry[countryIndex].manufacturer[carIndex].cars[index]
        if currentGerman.carQuantity != 0 {
            currentGerman.carQuantity! -= 1
        }
        carTableView.reloadData()
    }
}
