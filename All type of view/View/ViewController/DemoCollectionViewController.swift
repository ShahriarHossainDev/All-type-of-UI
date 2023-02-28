//
//  DemoCollectionViewController.swift
//  All type of view
//
//  Created by Shishir_Mac on 28/2/23.
//

import UIKit

private let reuseIdentifier = "Cell"

class DemoCollectionViewController: UICollectionViewController {

    private var recipes = Recipe.createRecipes()
    private let cellIdentifier: String = "demoCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 5
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return recipes.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as? DemoCollectionViewCell {
            cell.configurateTheCell(recipes[indexPath.row])
            return cell
        }
    
        return UICollectionViewCell()
    }

}
