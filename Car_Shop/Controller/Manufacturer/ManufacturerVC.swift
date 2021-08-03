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
    var allBrands = [ManufacturerCountry]()
    
    //Arrays of objects
    var germanBrands = [ManufacturerCountry(logo: #imageLiteral(resourceName: "BMW"), brandName: "BMW"),
                        ManufacturerCountry(logo: #imageLiteral(resourceName: "Mercedes"), brandName: "MERCEDES"),
                        ManufacturerCountry(logo: #imageLiteral(resourceName: "Audi"), brandName: "AUDI")]
    var italianBrands = [ManufacturerCountry(logo: #imageLiteral(resourceName: "Ferrari"), brandName: "FERRARI"),
                         ManufacturerCountry(logo: #imageLiteral(resourceName: "alfa_romeo"), brandName: "ALFA ROMEO"),
                         ManufacturerCountry(logo: #imageLiteral(resourceName: "lamborghini"), brandName: "LAMBORGHINI")]
    var usaBrands = [ManufacturerCountry(logo: #imageLiteral(resourceName: "chevrolet"), brandName: "CHEVROLET"),
                     ManufacturerCountry(logo: #imageLiteral(resourceName: "tesla"), brandName: "TESLA"),
                     ManufacturerCountry(logo: #imageLiteral(resourceName: "ford"), brandName: "FORD")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIDesign()
        manufacturerTableView.delegate = self
        manufacturerTableView.dataSource = self
        allBrands = germanBrands + italianBrands + usaBrands
    }
    
    //MARK: - IBActions
    
    @IBAction func payButtonPressed(_ sender: UIButton) {
        let myStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let thirdVC = myStoryboard.instantiateViewController(withIdentifier: "PaymentVC") as! PaymentVC
        thirdVC.OrderedCars = addedCars
        removeData()
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
    
    func removeData() {
        for i in allBrands {
            i.quantity = 0
        }
        chosenCarQuantityLbl.text = "0"
        chosenCarsOverallPriceLbl.text = "0"
        addedCars.removeAll()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
            self.cancelBtn.isHidden = true
        }
        manufacturerTableView.reloadData()
    }
}
