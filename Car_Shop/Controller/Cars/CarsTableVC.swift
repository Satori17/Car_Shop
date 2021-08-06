//
//  CarsTableVC.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 30.07.21.
//

import UIKit


extension CarsVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        allCountry[countryIndex].manufacturer[carIndex].cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell") as! CarCell
        
        let currentSection = allCountry[countryIndex].manufacturer[carIndex].cars[indexPath.row]
            cell.carImageView.image = currentSection.image
        cell.carNameLabel.text = currentSection.carName
        cell.carPriceLabel.text = "\(currentSection.price!)"
        cell.carQuantityLabel.text = "\(currentSection.carQuantity!)"
        
        cell.delegate = self
        
        //UI changes
        cell.layer.cornerRadius = 20
        cell.layer.borderColor = #colorLiteral(red: 0.76175493, green: 0.7618840933, blue: 0.7617378831, alpha: 1)
        cell.layer.borderWidth = 6
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UINib(nibName: "HeaderView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! HeaderView
        
        view.NameLabel.text = allCountry[countryIndex].manufacturer[carIndex].brandName
        view.NameLabel.textAlignment = .center
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
}
