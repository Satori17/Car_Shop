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
        
        //Germany
        let currentGerman1 = germanCars[0][index]
        let currentGerman2 = germanCars[1][index]
        let currentGerman3 = germanCars[2][index]
        if currentGerman1.quantity == nil {
            currentGerman1.quantity = 0
        } else {
            currentGerman1.quantity! += 1
        }
        if currentGerman2.quantity == nil {
            currentGerman2.quantity = 0
        }
        currentGerman2.quantity! += 1
        if currentGerman3.quantity == nil {
            currentGerman3.quantity = 0
        }
        currentGerman3.quantity! += 1
        
        //Italy
        let currentItaly1 = italianCars[0][index]
        let currentItaly2 = italianCars[1][index]
        let currentItaly3 = italianCars[2][index]
        if currentItaly1.quantity == nil {
            currentItaly1.quantity = 0
        }
        currentItaly1.quantity! += 1
        if currentItaly2.quantity == nil {
            currentItaly2.quantity = 0
        }
        currentItaly2.quantity! += 1
        if currentItaly3.quantity == nil {
            currentItaly3.quantity = 0
        }
        currentItaly3.quantity! += 1
        
        //USA
        let currentUsa1 = usaCars[0][index]
        let currentUsa2 = usaCars[1][index]
        let currentUsa3 = usaCars[2][index]
        if currentUsa1.quantity == nil {
            currentUsa1.quantity = 0
        }
        currentUsa1.quantity! += 1
        if currentUsa2.quantity == nil {
            currentUsa2.quantity = 0
        }
        currentUsa2.quantity! += 1
        if currentUsa3.quantity == nil {
            currentUsa3.quantity = 0
        }
        currentUsa3.quantity! += 1
        carTableView.reloadData()
    }
    
    func removeCar(cell: CarCell) {
        let indexPath = carTableView.indexPath(for: cell)
        let index = (indexPath?.row)!
        
        //Germany
        let currentGerman1 = germanCars[0][index]
        let currentGerman2 = germanCars[1][index]
        let currentGerman3 = germanCars[2][index]
        if currentGerman1.quantity != 0 {
            currentGerman1.quantity! -= 1
        }
        if currentGerman2.quantity != 0 {
            currentGerman2.quantity! -= 1
        }
        if currentGerman3.quantity != 0 {
            currentGerman3.quantity! -= 1
        }
        
        //Italy
        let currentItaly1 = italianCars[0][index]
        let currentItaly2 = italianCars[1][index]
        let currentItaly3 = italianCars[2][index]
        if currentItaly1.quantity != 0 {
            currentItaly1.quantity! -= 1
        }
        if currentItaly2.quantity != 0 {
            currentItaly2.quantity! -= 1
        }
        if currentItaly3.quantity != 0 {
            currentItaly3.quantity! -= 1
        }
        
        //USA
        let currentUsa1 = usaCars[0][index]
        let currentUsa2 = usaCars[1][index]
        let currentUsa3 = usaCars[2][index]
        if currentUsa1.quantity != 0 {
            currentUsa1.quantity! -= 1
        }
        if currentUsa2.quantity != 0 {
            currentUsa2.quantity! -= 1
        }
        if currentUsa3.quantity != 0 {
            currentUsa3.quantity! -= 1
        }
        carTableView.reloadData()
    }
}
