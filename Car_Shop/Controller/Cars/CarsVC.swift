//
//  CarsVC.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 30.07.21.
//

import UIKit

protocol QuantityDelegate: AnyObject {
    func quantityController(car:CarsVC)
}


class CarsVC: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var carTableView: UITableView!
    @IBOutlet weak var addToCartBtn: UIButton!
    
    var countryIndex = 0
    var carIndex = 0
    
    weak var delegate: QuantityDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIDesign()
        carTableView.delegate = self
        carTableView.dataSource = self
    }
    //MARK: - IBAction
    
    @IBAction func AddToCartButtonPressed(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        delegate.quantityController(car: self)
    }
    
    //MARK: - Functions
    
    func UIDesign() {
        addToCartBtn.layer.cornerRadius = 20
        addToCartBtn.layer.shadowColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        addToCartBtn.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        addToCartBtn.layer.shadowOpacity = 1.0
        addToCartBtn.layer.borderWidth = 5
        addToCartBtn.layer.borderColor = #colorLiteral(red: 0, green: 0.5987204313, blue: 0, alpha: 1)
    }
}
