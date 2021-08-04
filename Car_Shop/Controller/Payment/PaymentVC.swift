//
//  PaymentVC.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 03.08.21.
//

import UIKit

class PaymentVC: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var PaymentTableView: UITableView!
    @IBOutlet weak var PaymentBtn: UIButton!
    
    var balance = 150000
    var OrderedCars = [Car]()
    var overallPrice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PaymentTableView.delegate = self
        PaymentTableView.dataSource = self
        UIDesign()
        calcOverallPrice()
        
    }
    
    //MARK: - IBAction
    
    @IBAction func paymentButtonPressed(_ sender: UIButton) {
        
        //Adding label to subview
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 40))
        label.center = CGPoint(x: 250, y: 285)
        label.textAlignment = .left
        label.text = "Please Wait."
        label.font = UIFont.boldSystemFont(ofSize: 35.0)
        label.textColor = #colorLiteral(red: 0, green: 0.5987204313, blue: 0, alpha: 1)
        
        //adding Activity Indicator View to subview
        let indicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 120, height: 120))
        indicator.center = CGPoint(x: 205, y: 350)
        indicator.style = .large
        indicator.startAnimating()
        indicator.color = #colorLiteral(red: 0, green: 0.5987204313, blue: 0, alpha: 1)
        
        //Image for successful/unsuccessful payment
        let succesfulImage = #imageLiteral(resourceName: "successful_icon")
        let unsuccessfulImage = #imageLiteral(resourceName: "unsuccessful_icon")
        let myImageView:UIImageView = UIImageView()
        myImageView.contentMode = UIView.ContentMode.scaleAspectFit
        myImageView.frame.size.width = 200
        myImageView.frame.size.height = 200
        myImageView.center = self.view.center
        myImageView.image = succesfulImage
        
        //Adding subview to PaymentVC
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PaymentVC") as! PaymentVC
        vc.view.frame = self.view.bounds
        self.addChild(vc)
        self.view.addSubview(vc.view)
        vc.view.addSubview(label)
        vc.view.addSubview(indicator)
        vc.didMove(toParent: self)
        
        //Remove separator lines from tableView
        vc.PaymentTableView.separatorColor = .clear
        
        //Please wait motion
        vc.PaymentBtn.setTitle("Order Is Processing", for: .normal)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            label.text = "Please Wait.."
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            label.text = "Please Wait..."
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            label.text = "Please Wait."
        }
        
        //Comparing overall price to balance
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            if self.overallPrice <= self.balance {
                indicator.isHidden = true
                vc.PaymentBtn.isHidden = true
                label.font = UIFont.boldSystemFont(ofSize: 28.0)
                label.text = "Order Is Placed"
                label.center = CGPoint(x: 260, y: 600)
                vc.view.addSubview(myImageView)
            } else {
                indicator.isHidden = true
                vc.PaymentBtn.isHidden = true
                label.font = UIFont.boldSystemFont(ofSize: 28.0)
                label.text = "Payment Failed"
                label.center = CGPoint(x: 260, y: 600)
                myImageView.image = unsuccessfulImage
                vc.view.addSubview(myImageView)
            }
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 7) {
            self.dismiss(animated: true, completion: nil)
        }
    }
    //MARK: - Functions
    
    func UIDesign() {
        PaymentBtn.layer.cornerRadius = 25
        PaymentBtn.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        PaymentBtn.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        PaymentBtn.layer.shadowOpacity = 1.0
    }
    
    func calcOverallPrice() {
        for i in OrderedCars {
            overallPrice += i.price! * i.quantity!
        }
        PaymentBtn.setTitle("Pay  \(overallPrice)$", for: .normal)
    }
}
