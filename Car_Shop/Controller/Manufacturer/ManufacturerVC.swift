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
    
    var addedCars = [Car]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIDesign()
        manufacturerTableView.delegate = self
        manufacturerTableView.dataSource = self
    }
    
    //MARK: - IBActions
    
    @IBAction func payButtonPressed(_ sender: UIButton) {
        let myStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let thirdVC = myStoryboard.instantiateViewController(withIdentifier: "PaymentVC") as! PaymentVC
        chosenCars(thirdVC: thirdVC)
        thirdVC.delegate = self
        self.navigationController?.present(thirdVC, animated: true, completion: nil)
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIButton) {
        removeData()
    }
    
    //MARK: - Functions
    
    func UIDesign() {
        payBtn.layer.cornerRadius = 25
        payBtn.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        payBtn.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        payBtn.layer.shadowOpacity = 1.0
        cancelBtn.layer.cornerRadius = 25
        cancelBtn.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        cancelBtn.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        cancelBtn.layer.shadowOpacity = 1.0
        cancelBtn.isHidden = true
    }
    
    func chosenCars(thirdVC: PaymentVC) {
        
        for item in bmwCars.cars {
            if item.carQuantity! > 0 {
                thirdVC.OrderedCars.append(item)
            }
        }
        for item in mercedesCars.cars {
            if item.carQuantity! > 0 {
                thirdVC.OrderedCars.append(item)
            }
        }
        for item in audiCars.cars {
            if item.carQuantity! > 0 {
                thirdVC.OrderedCars.append(item)
            }
        }
        for item in ferrariCars.cars {
            if item.carQuantity! > 0 {
                thirdVC.OrderedCars.append(item)
            }
        }
        for item in alfaromeoCars.cars {
            if item.carQuantity! > 0 {
                thirdVC.OrderedCars.append(item)
            }
        }
        for item in lamborghiniCars.cars {
            if item.carQuantity! > 0 {
                thirdVC.OrderedCars.append(item)
            }
        }
        for item in chevroletCars.cars {
            if item.carQuantity! > 0 {
                thirdVC.OrderedCars.append(item)
            }
        }
        for item in teslaCars.cars {
            if item.carQuantity! > 0 {
                thirdVC.OrderedCars.append(item)
            }
        }
        for item in fordCars.cars {
            if item.carQuantity! > 0 {
                thirdVC.OrderedCars.append(item)
            }
        }
        
    }
    
}
