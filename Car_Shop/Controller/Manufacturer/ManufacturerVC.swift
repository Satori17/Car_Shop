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
        payBtn.changeUI(withBorder: false)
        cancelBtn.changeUI(withBorder: false)
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
