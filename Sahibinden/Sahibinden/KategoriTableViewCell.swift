//
//  KategoriTableViewCell.swift
//  Sahibinden
//
//  Created by Gizem Yavuz on 5.05.2022.
//

import UIKit

class KategoriTableViewCell: UITableViewCell {

    @IBOutlet weak var kategoriImageView: UIImageView!
    @IBOutlet weak var kategoriAdiImageView: UILabel!
    @IBOutlet weak var kategoriAciklamaImageView: UILabel!
    @IBOutlet weak var hucreArkaPlan: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
