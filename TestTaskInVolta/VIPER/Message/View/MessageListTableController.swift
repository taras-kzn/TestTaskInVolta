//
//  MessageListTableController.swift
//  TestTaskInVolta
//
//  Created by Denis Tarasov on 26.06.2022.
//

import Foundation
import UIKit

final class MessageListTableController: NSObject, UITableViewDelegate, UITableViewDataSource {

    //MARK: - Properties
    private var tableView: UITableView!

    //MARK: - Init
    convenience init(tableView: UITableView!) {
        self.init()
        self.tableView = tableView
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.register(MessageCell.self, forCellReuseIdentifier: MessageCell.reusedId)
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: MessageCell.reusedId, for: indexPath) as? MessageCell else { return UITableViewCell()}
        cell.textLabel?.text = "indexPAth \(indexPath.row)"
        return cell
    }
}
