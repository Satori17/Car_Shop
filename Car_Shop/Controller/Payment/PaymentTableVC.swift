//
//  PaymentTableVC.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 03.08.21.
//

import UIKit


extension PaymentVC: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        OrderedCars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PaymentCell") as! PaymentCell
        let currentCar = OrderedCars[indexPath.row]
        cell.logoImageView.image = currentCar.logo
        cell.carNameLabel.text = currentCar.carName
        cell.quantityLabel.text = "x\(currentCar.carQuantity!)"
        cell.priceLabel.text = "\(currentCar.price)$"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        48
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UINib(nibName: "HeaderView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! HeaderView
        
        view.NameLabel.text = "Chosen Cars"
        view.NameLabel.textAlignment = .center
        view.NameLabel.font = UIFont.boldSystemFont(ofSize: 20.0)
        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        60
    }
}
