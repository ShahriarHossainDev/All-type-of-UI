//
//  DemoCollectionViewCell.swift
//  All type of view
//
//  Created by Shishir_Mac on 28/2/23.
//

import UIKit

class DemoCollectionViewCell: UICollectionViewCell {

    @IBOutlet private var thumbnailImageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        thumbnailImageView.image = nil
        thumbnailImageView.layer.cornerRadius = 2
    }
    
    // MARK: Cell Configuration
    
    func configurateTheCell(_ recipe: Recipe) {
        thumbnailImageView.image = UIImage(named: recipe.thumbnails)
    }
}
