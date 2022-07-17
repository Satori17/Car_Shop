//
//  CarCell.swift
//  Car_Shop
//
//  Created by Saba Khitaridze on 30.07.21.
//

import UIKit

protocol chooseCar: AnyObject {
    func addCar(cell: CarCell)
    func removeCar(cell: CarCell)
}


class CarCell: UITableViewCell {

    //MARK: - IBOutlets
    @IBOutlet weak var carImageView: UIImageView!
    @IBOutlet weak var carNameLabel: UILabel!
    @IBOutlet weak var carPriceLabel: UILabel!
    @IBOutlet weak var carQuantityLabel: UILabel!
    @IBOutlet weak var removeBtn: UIButton!
    @IBOutlet weak var addBtn: UIButton!
    
    weak var delegate: chooseCar!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        removeBtn.layer.cornerRadius = 10
        addBtn.layer.cornerRadius = 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //MARK: - IBActions

    @IBAction func removeButtonPressed(_ sender: UIButton) {
        delegate.removeCar(cell: self)
    }
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        delegate.addCar(cell: self)
    }
}
