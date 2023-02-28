//
//  DemoTableViewController.swift
//  All type of view
//
//  Created by Shishir_Mac on 28/2/23.
//

import UIKit

class DemoTableViewController: UITableViewController {

    private var recipes = Recipe.createRecipes()
    private let cellIdentifier: String = "tableCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? TableViewCell {
            cell.configurateTheCell(recipes[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            recipes.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .bottom)
        }
    }
}

