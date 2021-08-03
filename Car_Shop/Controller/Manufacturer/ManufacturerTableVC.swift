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
            view.NameLabel.text = "Germany 🇩🇪"
        } else if section == 1 {
            view.NameLabel.text = "Italy 🇮🇹"
        } else {
            view.NameLabel.text = "USA 🇺🇸"
        }
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return italianBrands.count
        } else if section == 1 {
            return germanBrands.count
        } else {
            return usaBrands.count
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ManufacturerCell") as! ManufacturerCell
        
        if indexPath.section == 0 {
            let currentCarBrand = germanBrands[indexPath.row]
            //let currentQuantity = addedCars[indexPath.row]
            cell.logoImageView.image = currentCarBrand.logo
            cell.carNameLabel.text = currentCarBrand.brandName
            cell.carQuantity.text = "\(currentCarBrand.quantity!)"
        } else if indexPath.section == 1 {
            let currentCarBrand = italianBrands[indexPath.row]
            cell.logoImageView.image = currentCarBrand.logo
            cell.carNameLabel.text = currentCarBrand.brandName
            cell.carQuantity.text = "\(currentCarBrand.quantity!)"
        } else {
            let currentCarBrand = usaBrands[indexPath.row]
            cell.logoImageView.image = currentCarBrand.logo
            cell.carNameLabel.text = currentCarBrand.brandName
            cell.carQuantity.text = "\(currentCarBrand.quantity!)"
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
        
        if indexPath.section == 0 {
            secondVC.countryIndex = 0
            secondVC.customInit(carIndex: indexPath.row)
        } else if indexPath.section == 1 {
            secondVC.countryIndex = 1
            secondVC.customInit(carIndex: indexPath.row)
        } else {
            secondVC.countryIndex = 2
            secondVC.customInit(carIndex: indexPath.row)
        }
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}
