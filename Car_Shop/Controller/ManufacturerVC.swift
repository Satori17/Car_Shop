//
//  ManufacturerVC.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 30.07.21.
//

import UIKit

class ManufacturerVC: UIViewController {
    
    
    //MARK: - IBOutlets
    @IBOutlet weak var chosenCarQuantityLbl: UILabel!
    @IBOutlet weak var chosenCarsOverallPriceLbl: UILabel!
    @IBOutlet weak var manufacturerTableView: UITableView!
    @IBOutlet weak var payBtn: UIButton!
    @IBOutlet weak var cancelBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIDesign()
        manufacturerTableView.delegate = self
        manufacturerTableView.dataSource = self
    }
    
    //MARK: - IBActions
    
    @IBAction func payButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
    }
    
    
    func UIDesign() {
        payBtn.layer.cornerRadius = 25
        payBtn.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        payBtn.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        payBtn.layer.shadowOpacity = 1.0
        cancelBtn.layer.cornerRadius = 25
        cancelBtn.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        cancelBtn.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        cancelBtn.layer.shadowOpacity = 1.0
        
    }
    
}