//
//  CarsTableVC.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 30.07.21.
//

import UIKit


extension CarsVC: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if countryIndex == 0 {
            return germanCars[carIndex].count
        } else if countryIndex == 1 {
          return italianCars[carIndex].count
        } else {
           return usaCars[carIndex].count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell") as! CarCell
        
        if countryIndex == 0 {
            let currentGermanCar = germanCars[carIndex][indexPath.row]
            cell.carImageView.image = currentGermanCar.image
            cell.carNameLabel.text = currentGermanCar.carName
            cell.carPriceLabel.text = "\(currentGermanCar.price!)$"
            
            
            if currentGermanCar.quantity! > 0 {
                cell.carQuantityLabel.text = "\(currentGermanCar.quantity!)"
            } else {
                cell.carQuantityLabel.text = "0"
            }
        } else if countryIndex == 1 {
            let currentItalianCar = italianCars[carIndex][indexPath.row]
            cell.carImageView.image = currentItalianCar.image
            cell.carNameLabel.text = currentItalianCar.carName
            cell.carPriceLabel.text = "\(currentItalianCar.price!)$"
            if currentItalianCar.quantity! > 0 {
                cell.carQuantityLabel.text = "\(currentItalianCar.quantity!)"
            } else {
                cell.carQuantityLabel.text = "0"
            }
        } else {
            let currentUsaCar = usaCars[carIndex][indexPath.row]
            cell.carImageView.image = currentUsaCar.image
            cell.carNameLabel.text = currentUsaCar.carName
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
                view.NameLabel.text = germans[0].brandName
            } else if carIndex == 1 {
                view.NameLabel.text = germans[1].brandName
            } else {
                view.NameLabel.text = germans[2].brandName
            }
        } else if countryIndex == 1 {
            if carIndex == 0 {
                view.NameLabel.text = italians[0].brandName
            } else if carIndex == 1 {
                view.NameLabel.text = italians[1].brandName
            } else {
                view.NameLabel.text = italians[2].brandName
            }
        } else {
            if carIndex == 0 {
                view.NameLabel.text = americans[0].brandName
            } else if carIndex == 1 {
                view.NameLabel.text = americans[1].brandName
            } else {
                view.NameLabel.text = americans[2].brandName
            }
        }
        view.NameLabel.textAlignment = .center
        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
    
}
