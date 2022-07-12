//
//  TableViewCell.swift
//  HelloDuna3rd
//
//  Created by Seungyun Kim on 2022/07/12.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var appiconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var downloadButton: UIImageView!
    static let identifier = "TableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(image: UIImage?, title: String, description: String) {
        appiconImageView.image = image
        titleLabel.text = title
        descriptionLabel.text = description
    }

}
