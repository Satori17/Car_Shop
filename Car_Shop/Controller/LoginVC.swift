//
//  ViewController.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 29.07.21.
//

import UIKit


enum LoginErrors: Error {
    case notEmailFormat
    case notCompletedField
    case incorrectPassword
    case shortPassword
}


class LoginVC: UIViewController {

    
 //MARK: - IBOutlets
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var emailLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var loginImageView: UIImageView!
    @IBOutlet var loginView: UIView!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIDesign()
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    
    //MARK: - IBAction

    @IBAction func loginBtnPressed(_ sender: UIButton) {
        
        do {
            try login()
        } catch LoginErrors.notCompletedField {
            myAlert.showAlert(title: "Incomplete", message: "Please fill all the fields", vc: self)
        } catch LoginErrors.notEmailFormat {
            myAlert.showAlert(title: "Incorrect Email", message: "Please type correct Email address", vc: self)
        } catch LoginErrors.shortPassword {
            myAlert.showAlert(title: "Short Password", message: "Please type longer Password", vc: self)
        } catch LoginErrors.incorrectPassword {
            myAlert.showAlert(title: "Incorrect Password", message: "Please type correct Password", vc: self)
        } catch {
            myAlert.showAlert(title: "Error", message: "Other Error", vc: self)
        }
        
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ManufacturerVC") as! ManufacturerVC
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    //MARK: - Additional Functions
    
    func login() throws {
        let email = emailLabel.text!
        let password = passwordLabel.text!
        
        if email.count == 0 || password.count == 0 {
            throw LoginErrors.notCompletedField
        }
        
        if !isValidEmail(email: email) {
            throw LoginErrors.notEmailFormat
        }
        
        if password.count < 9 {
            throw LoginErrors.shortPassword
        }
        
        if password != "timcook60" {
            throw LoginErrors.incorrectPassword
        }
        
    }
    
    func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    func UIDesign() {
        loginBtn.layer.cornerRadius = 25
        loginBtn.layer.borderWidth = 4
        loginBtn.layer.borderColor = UIColor.black.cgColor
        loginBtn.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        loginBtn.layer.shadowOffset = CGSize(width: 0.0, height: 7.0)
        loginBtn.layer.shadowOpacity = 1.0
        imageView.image = imageView.image?.withRenderingMode(.alwaysOriginal)
    }
    
    
    // functions for UI moving when Keyboard appears
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
}
