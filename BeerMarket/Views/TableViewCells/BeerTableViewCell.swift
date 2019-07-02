//
//  BeerTableViewCell.swift
//  BeerMarket
//
//  Created by Matheus Cardoso kuhn on 01/07/19.
//  Copyright © 2019 MDT. All rights reserved.
//

import UIKit

class BeerTableViewCell: UITableViewCell {

    //MARK: - IBOutlets
    @IBOutlet weak var imageViewIcon: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelAlcoholByVolume: UILabel!
    
    //MARK: - Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
}
