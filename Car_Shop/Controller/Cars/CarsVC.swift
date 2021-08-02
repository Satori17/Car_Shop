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
    
    
    //Objects
    var germanCars = [
        [  Car(image: #imageLiteral(resourceName: "Z4"), carName: "BMW Z4", price: 24000, logo: #imageLiteral(resourceName: "BMW"), brandName: "BMW"),
           Car(image: #imageLiteral(resourceName: "X5"), carName: "BMW X5", price: 35000, logo: #imageLiteral(resourceName: "BMW"), brandName: "BMW" ),
           Car(image: #imageLiteral(resourceName: "Coupe"), carName: "BMW Coupe", price: 15000, logo: #imageLiteral(resourceName: "BMW"), brandName: "BMW")],
        [Car(image: #imageLiteral(resourceName: "A Class"), carName: "MERCEDES A Class", price: 40000, logo: #imageLiteral(resourceName: "Mercedes"), brandName: "MERCEDES"),
         Car(image: #imageLiteral(resourceName: "E Class"), carName: "MERCEDES E Class", price: 55000, logo: #imageLiteral(resourceName: "Mercedes"), brandName: "MERCEDES"),
         Car(image: #imageLiteral(resourceName: "AMG Sport"), carName: "MERCEDES AMG Sport", price: 42000, logo: #imageLiteral(resourceName: "Mercedes"), brandName: "MERCEDES")],
        [Car(image: #imageLiteral(resourceName: "Q3"), carName: "AUDI Q3", price: 20000,logo: #imageLiteral(resourceName: "Audi"), brandName: "AUDI"),
         Car(image: #imageLiteral(resourceName: "A1"), carName: "AUDI A1", price: 25000,logo: #imageLiteral(resourceName: "Audi"), brandName: "AUDI"),
         Car(image: #imageLiteral(resourceName: "R8"), carName: "AUDI R8", price: 60000,logo: #imageLiteral(resourceName: "Audi"), brandName: "AUDI")]
    ]
    var italianCars = [
        [Car(image: #imageLiteral(resourceName: "488 GTB"), carName: "FERRARI 488 GTB", price: 75000, logo: #imageLiteral(resourceName: "Ferrari"), brandName: "FERRARI"),
         Car(image: #imageLiteral(resourceName: "F60"), carName: "FERRARI F60", price: 120000, logo: #imageLiteral(resourceName: "Ferrari"), brandName: "FERRARI"),
         Car(image: #imageLiteral(resourceName: "F12berlinetta"), carName: "FERRARI F12berlinetta", price: 64000, logo: #imageLiteral(resourceName: "Ferrari"), brandName: "FERRARI")],
        [Car(image: #imageLiteral(resourceName: "Sport"), carName: "ALFA ROMEO Sport", price: 30000, logo: #imageLiteral(resourceName: "alfa_romeo"), brandName: "ALFA ROMEO"),
         Car(image: #imageLiteral(resourceName: "Giulietta"), carName: "ALFA ROMEO Giulietta", price: 40000, logo: #imageLiteral(resourceName: "alfa_romeo"), brandName: "ALFA ROMEO"),
         Car(image: #imageLiteral(resourceName: "4C"), carName: "ALFA ROMEO 4C", price: 62000, logo: #imageLiteral(resourceName: "alfa_romeo"), brandName: "ALFA ROMEO")],
        [Car(image: #imageLiteral(resourceName: "Aventador"), carName: "LAMBORGHINI Aventador", price: 30000, logo: #imageLiteral(resourceName: "lamborghini"), brandName: "LAMBORGHINI"),
         Car(image: #imageLiteral(resourceName: "Huracan"), carName: "LAMBORGHINI Huracan", price: 40000, logo: #imageLiteral(resourceName: "lamborghini"), brandName: "LAMBORGHINI"),
         Car(image: #imageLiteral(resourceName: "Centenario"), carName: "LAMBORGHINI Veneno", price: 62000, logo: #imageLiteral(resourceName: "lamborghini"), brandName: "LAMBORGHINI")]
    ]
    var usaCars = [
        [Car(image: #imageLiteral(resourceName: "Camaro"), carName: "CHEVROLET Camaro", price: 45000, logo: #imageLiteral(resourceName: "chevrolet"), brandName: "CHEVROLET"),
         Car(image: #imageLiteral(resourceName: "Corvette C7"), carName: "CHEVROLET Corvette C7", price: 37000, logo: #imageLiteral(resourceName: "chevrolet"), brandName: "CHEVROLET"),
         Car(image: #imageLiteral(resourceName: "Pickup"), carName: "CHEVROLET Pickup", price: 28000, logo: #imageLiteral(resourceName: "chevrolet"), brandName: "CHEVROLET")],
        [Car(image: #imageLiteral(resourceName: "Model 3"), carName: "TESLA Model 3", price: 40000, logo: #imageLiteral(resourceName: "tesla"), brandName: "TESLA"),
         Car(image: #imageLiteral(resourceName: "Model S"), carName: "TESLA Model S", price: 50000, logo: #imageLiteral(resourceName: "tesla"), brandName: "TESLA"),
         Car(image: #imageLiteral(resourceName: "Model X"), carName: "TESLA Model X", price: 62000, logo: #imageLiteral(resourceName: "tesla"), brandName: "TESLA")],
        [Car(image: #imageLiteral(resourceName: "Focus"), carName: "Ford Focus", price: 18000, logo: #imageLiteral(resourceName: "ford"), brandName: "Ford"),
         Car(image: #imageLiteral(resourceName: "Mustang"), carName: "Ford Mustang", price: 35000, logo: #imageLiteral(resourceName: "ford"), brandName: "Ford"),
         Car(image: #imageLiteral(resourceName: "Ranger"), carName: "Ford Ranger", price: 30000, logo: #imageLiteral(resourceName: "ford"), brandName: "Ford")]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIDesign()
        carTableView.delegate = self
        carTableView.dataSource = self
        //addToCartBtn.setTitle("Button Title", for: .normal)
        
    }
    //MARK: - IBActions
    
    @IBAction func AddToCartButtonPressed(_ sender: UIButton) {
        //quantityController()
        navigationController?.popViewController(animated: true)
        delegate.quantityController(cars: self)
        
    }
    
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
