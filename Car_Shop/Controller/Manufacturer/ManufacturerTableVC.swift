//
//  ManufacturerTableVC.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 30.07.21.
//

import UIKit

extension ManufacturerVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UINib(nibName: "HeaderView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! HeaderView
        
        if section == 0 {
            view.NameLabel.text = germanCars.name
        } else if section == 1 {
            view.NameLabel.text = italianCars.name
        } else {
            view.NameLabel.text = usaCars.name
        }
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return germanCars.manufacturer.count
        } else if section == 1 {
            return italianCars.manufacturer.count
        } else {
            return usaCars.manufacturer.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ManufacturerCell") as! ManufacturerCell
        if indexPath.section == 0 {
            let currentCar = germanCars.manufacturer[indexPath.row]
            cell.carNameLabel.text = currentCar.brandName
            cell.logoImageView.image = currentCar.logo
            cell.carQuantity.text = "\(currentCar.quantity!)"
            
        } else if indexPath.section == 1 {
            let currentCar = italianCars.manufacturer[indexPath.row]
            cell.carNameLabel.text = currentCar.brandName
            cell.logoImageView.image = currentCar.logo
            cell.carQuantity.text = "\(currentCar.quantity!)"
        } else {
            let currentCar = usaCars.manufacturer[indexPath.row]
            cell.carNameLabel.text = currentCar.brandName
            cell.logoImageView.image = currentCar.logo
            cell.carQuantity.text = "\(currentCar.quantity!)"
        }
        
        //UI changes
        cell.layer.cornerRadius = 25
        cell.layer.borderColor = #colorLiteral(red: 0.76175493, green: 0.7618840933, blue: 0.7617378831, alpha: 1)
        cell.layer.borderWidth = 6
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let myStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = myStoryboard.instantiateViewController(withIdentifier: "CarsVC") as! CarsVC
    
        secondVC.carIndex = indexPath.row
        secondVC.countryIndex = indexPath.section
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}
