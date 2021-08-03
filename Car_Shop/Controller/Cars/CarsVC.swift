//
//  CarsVC.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 30.07.21.
//

import UIKit

protocol QuantityDelegate: AnyObject {
    func quantityController(cars:CarsVC)
}


class CarsVC: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var carTableView: UITableView!
    @IBOutlet weak var addToCartBtn: UIButton!
    
    var countryIndex = 0
    var carIndex: Int!
    
    weak var delegate: QuantityDelegate!
    
    //Arrays of objects
    var germanCars = [
        [  Car(image: #imageLiteral(resourceName: "Z4"), carName: "Z4", price: 24000, logo: #imageLiteral(resourceName: "BMW"), brandName: "BMW"),
           Car(image: #imageLiteral(resourceName: "X5"), carName: "X5", price: 35000, logo: #imageLiteral(resourceName: "BMW"), brandName: "BMW" ),
           Car(image: #imageLiteral(resourceName: "Coupe"), carName: "Coupe", price: 15000, logo: #imageLiteral(resourceName: "BMW"), brandName: "BMW")],
        [Car(image: #imageLiteral(resourceName: "A Class"), carName: "A Class", price: 40000, logo: #imageLiteral(resourceName: "Mercedes"), brandName: "MERCEDES"),
         Car(image: #imageLiteral(resourceName: "E Class"), carName: "E Class", price: 55000, logo: #imageLiteral(resourceName: "Mercedes"), brandName: "MERCEDES"),
         Car(image: #imageLiteral(resourceName: "AMG Sport"), carName: "AMG Sport", price: 42000, logo: #imageLiteral(resourceName: "Mercedes"), brandName: "MERCEDES")],
        [Car(image: #imageLiteral(resourceName: "Q3"), carName: "Q3", price: 20000,logo: #imageLiteral(resourceName: "Audi"), brandName: "AUDI"),
         Car(image: #imageLiteral(resourceName: "A1"), carName: "A1", price: 25000,logo: #imageLiteral(resourceName: "Audi"), brandName: "AUDI"),
         Car(image: #imageLiteral(resourceName: "R8"), carName: "R8", price: 60000,logo: #imageLiteral(resourceName: "Audi"), brandName: "AUDI")]
    ]
    var italianCars = [
        [Car(image: #imageLiteral(resourceName: "488 GTB"), carName: "488 GTB", price: 75000, logo: #imageLiteral(resourceName: "Ferrari"), brandName: "FERRARI"),
         Car(image: #imageLiteral(resourceName: "F60"), carName: "F60", price: 120000, logo: #imageLiteral(resourceName: "Ferrari"), brandName: "FERRARI"),
         Car(image: #imageLiteral(resourceName: "F12berlinetta"), carName: "F12berlinetta", price: 64000, logo: #imageLiteral(resourceName: "Ferrari"), brandName: "FERRARI")],
        [Car(image: #imageLiteral(resourceName: "Sport"), carName: "Sport", price: 30000, logo: #imageLiteral(resourceName: "alfa_romeo"), brandName: "ALFA ROMEO"),
         Car(image: #imageLiteral(resourceName: "Giulietta"), carName: "Giulietta", price: 40000, logo: #imageLiteral(resourceName: "alfa_romeo"), brandName: "ALFA ROMEO"),
         Car(image: #imageLiteral(resourceName: "4C"), carName: "4C", price: 62000, logo: #imageLiteral(resourceName: "alfa_romeo"), brandName: "ALFA ROMEO")],
        [Car(image: #imageLiteral(resourceName: "Aventador"), carName: "Aventador", price: 30000, logo: #imageLiteral(resourceName: "lamborghini"), brandName: "LAMBORGHINI"),
         Car(image: #imageLiteral(resourceName: "Huracan"), carName: "Huracan", price: 40000, logo: #imageLiteral(resourceName: "lamborghini"), brandName: "LAMBORGHINI"),
         Car(image: #imageLiteral(resourceName: "Centenario"), carName: "Centenario", price: 62000, logo: #imageLiteral(resourceName: "lamborghini"), brandName: "LAMBORGHINI")]
    ]
    var usaCars = [
        [Car(image: #imageLiteral(resourceName: "Camaro"), carName: "Camaro", price: 45000, logo: #imageLiteral(resourceName: "chevrolet"), brandName: "CHEVROLET"),
         Car(image: #imageLiteral(resourceName: "Corvette C7"), carName: "Corvette C7", price: 37000, logo: #imageLiteral(resourceName: "chevrolet"), brandName: "CHEVROLET"),
         Car(image: #imageLiteral(resourceName: "Pickup"), carName: "Pickup", price: 28000, logo: #imageLiteral(resourceName: "chevrolet"), brandName: "CHEVROLET")],
        [Car(image: #imageLiteral(resourceName: "Model 3"), carName: "Model 3", price: 40000, logo: #imageLiteral(resourceName: "tesla"), brandName: "TESLA"),
         Car(image: #imageLiteral(resourceName: "Model S"), carName: "Model S", price: 50000, logo: #imageLiteral(resourceName: "tesla"), brandName: "TESLA"),
         Car(image: #imageLiteral(resourceName: "Model X"), carName: "Model X", price: 62000, logo: #imageLiteral(resourceName: "tesla"), brandName: "TESLA")],
        [Car(image: #imageLiteral(resourceName: "Focus"), carName: "Focus", price: 18000, logo: #imageLiteral(resourceName: "ford"), brandName: "Ford"),
         Car(image: #imageLiteral(resourceName: "Mustang"), carName: "Mustang", price: 35000, logo: #imageLiteral(resourceName: "ford"), brandName: "Ford"),
         Car(image: #imageLiteral(resourceName: "Ranger"), carName: "Ranger", price: 30000, logo: #imageLiteral(resourceName: "ford"), brandName: "Ford")]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIDesign()
        carTableView.delegate = self
        carTableView.dataSource = self
    }
    //MARK: - IBAction
    
    @IBAction func AddToCartButtonPressed(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        delegate.quantityController(cars: self)
    }
    
    //MARK: - Functions
    
    func UIDesign() {
        addToCartBtn.layer.cornerRadius = 25
        addToCartBtn.layer.shadowColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        addToCartBtn.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
        addToCartBtn.layer.shadowOpacity = 1.0
        addToCartBtn.layer.borderWidth = 5
        addToCartBtn.layer.borderColor = #colorLiteral(red: 0, green: 0.5987204313, blue: 0, alpha: 1)
    }
    
    func customInit(carIndex:Int) {
        self.carIndex = carIndex
        
    }
    
}
