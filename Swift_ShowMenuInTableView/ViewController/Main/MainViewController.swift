//
//  ViewController.swift
//  Swift_ShowMenuInTableView
//
//  Created by hidetomo on 2019/09/05.
//  Copyright © 2019 Hidetomo Masuda. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    
    private var dataList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
}

private extension MainViewController {
    
    private func setup() {
        setupProtocol()
        setupDataList()
        registerTableViewCell()
    }
    
    private func setupProtocol() {
        tableView.dataSource = self
    }
    
    private func setupDataList() {
        for i in 0 ..< 100 {
            dataList.append("cell\(i)")
        }
    }
    
    private func registerTableViewCell() {
        let nib = UINib(nibName: "MainCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MainCell")
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as? MainCell else {
            return UITableViewCell()
        }
        
        cell.setup(text: dataList[indexPath.row])
        
        return cell
    }
}

