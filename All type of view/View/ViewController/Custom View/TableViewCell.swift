//
//  TableViewCell.swift
//  All type of view
//
//  Created by Shishir_Mac on 28/2/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var prepTimeLabel: UILabel!
    @IBOutlet private var thumbnailImageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        nameLabel.text = nil
        prepTimeLabel.text = nil
        thumbnailImageView.image = nil
        thumbnailImageView.layer.cornerRadius = 2
    }
    
    // MARK: Cell Configuration
    
    func configurateTheCell(_ recipe: Recipe) {
        nameLabel.text = recipe.name
        prepTimeLabel.text = "Prep Time: " + recipe.prepTime
        thumbnailImageView.image = UIImage(named: recipe.thumbnails)
    }
    
}
