//
//  TableViewController.swift
//  HelloDuna3rd
//
//  Created by Seungyun Kim on 2022/07/12.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var appList: [AppModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
//        tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        initAnimalData()
    }
    
    func initAnimalData() {
        appList.append(contentsOf: [
            AppModel(imageName: "icon_alarm", appName: "alarm", appDescription: "description")
        ])
    }
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell else { return UITableViewCell()}
        cell.setupCell(image: appList[indexPath.row].makeImage(), title: appList[indexPath.row].appName, description: appList[indexPath.row].appDescription)
        return cell
    }
}

extension TableViewController: UITableViewDelegate {
    
}
