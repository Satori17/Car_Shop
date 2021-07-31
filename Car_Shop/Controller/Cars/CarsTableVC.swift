//
//  CarsTableVC.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 30.07.21.
//

import UIKit


extension CarsVC: UITableViewDelegate, UITableViewDataSource, chooseCar {
    
    func addCar(cell: CarCell) {
        let indexPath = carTableView.indexPath(for: cell)
        let index = (indexPath?.row)!
        
        //Germany
        let currentGerman1 = germanCars[0][index]
        let currentGerman2 = germanCars[1][index]
        let currentGerman3 = germanCars[2][index]
        if currentGerman1.quantity == nil {
            currentGerman1.quantity = 0
        }
        currentGerman1.quantity! += 1
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
        if currentGerman1.quantity != nil {
            currentGerman1.quantity! -= 1
        }
        if currentGerman2.quantity != nil {
            currentGerman2.quantity! -= 1
        }
        if currentGerman3.quantity != nil {
            currentGerman3.quantity! -= 1
        }
        
        //Italy
        let currentItaly1 = italianCars[0][index]
        let currentItaly2 = italianCars[1][index]
        let currentItaly3 = italianCars[2][index]
        if currentItaly1.quantity != nil {
            currentItaly1.quantity! -= 1
        }
        if currentItaly2.quantity != nil {
            currentItaly2.quantity! -= 1
        }
        if currentItaly3.quantity != nil {
            currentItaly3.quantity! -= 1
        }
        
        //USA
        let currentUsa1 = usaCars[0][index]
        let currentUsa2 = usaCars[1][index]
        let currentUsa3 = usaCars[2][index]
        if currentUsa1.quantity != nil {
            currentUsa1.quantity! -= 1
        }
        if currentUsa2.quantity != nil {
            currentUsa2.quantity! -= 1
        }
        if currentUsa3.quantity != nil {
            currentUsa3.quantity! -= 1
        }
        
        carTableView.reloadData()
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return  3
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell") as! CarCell
        
        if countryIndex == 0 {
            let currentGermanCar = germanCars[carIndex][indexPath.row]
            cell.carImageView.image = currentGermanCar.image
            cell.carNameLabel.text = currentGermanCar.name
            cell.carPriceLabel.text = "\(currentGermanCar.price!)$"
            
            if currentGermanCar.quantity! > 0 {
                cell.carQuantityLabel.text = "\(currentGermanCar.quantity!)"
            } else {
                cell.carQuantityLabel.text = "0"
            }
        } else if countryIndex == 1 {
            let currentItalianCar = italianCars[carIndex][indexPath.row]
            cell.carImageView.image = currentItalianCar.image
            cell.carNameLabel.text = currentItalianCar.name
            cell.carPriceLabel.text = "\(currentItalianCar.price!)$"
            if currentItalianCar.quantity! > 0 {
                cell.carQuantityLabel.text = "\(currentItalianCar.quantity!)"
            } else {
                cell.carQuantityLabel.text = "0"
            }
        } else {
            let currentUsaCar = usaCars[carIndex][indexPath.row]
            cell.carImageView.image = currentUsaCar.image
            cell.carNameLabel.text = currentUsaCar.name
            cell.carPriceLabel.text = "\(currentUsaCar.price!)$"
            if currentUsaCar.quantity! > 0 {
                cell.carQuantityLabel.text = "\(currentUsaCar.quantity!)"
            } else {
                cell.carQuantityLabel.text = "0"
            }
        }
        
        
        
        cell.delegate = self
        
        //UI changes
        cell.layer.cornerRadius = 25
        cell.layer.borderColor = #colorLiteral(red: 0.76175493, green: 0.7618840933, blue: 0.7617378831, alpha: 1)
        cell.layer.borderWidth = 6
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UINib(nibName: "HeaderView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! HeaderView
        let germans = ManufacturerVC().germanBrands
        let italians = ManufacturerVC().italianBrands
        let americans = ManufacturerVC().usaBrands
        
        if countryIndex == 0 {
            if carIndex == 0 {
                view.NameLabel.text = germans[0].name
            } else if carIndex == 1 {
                view.NameLabel.text = germans[1].name
            } else {
                view.NameLabel.text = germans[2].name
            }
        } else if countryIndex == 1 {
            if carIndex == 0 {
                view.NameLabel.text = italians[0].name
            } else if carIndex == 1 {
                view.NameLabel.text = italians[1].name
            } else {
                view.NameLabel.text = italians[2].name
            }
        } else {
            if carIndex == 0 {
                view.NameLabel.text = americans[0].name
            } else if carIndex == 1 {
                view.NameLabel.text = americans[1].name
            } else {
                view.NameLabel.text = americans[2].name
            }
        }
        view.NameLabel.textAlignment = .center
        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
    
}
