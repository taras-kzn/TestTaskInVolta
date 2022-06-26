//
//  MessageListViewController.swift
//  TestTaskInVolta
//
//  Created by admin on 25.06.2022.
//

import UIKit

class MessageListViewController: UIViewController, MessageListViewInput {

    //MARK: @IBOutlets
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var messageTableView: UITableView!
    //MARK: - Properties
    private var messageTableController: MessageListTableController!
    var output: MessageListViewOutput!

//    //MARK: - Init
//    required override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        output.viewIsReady()
    }
    //MARK: - MessageViewInput
    func setupInitialState() {
        setupMessageListTableController()
        titleLabel.text = "Test"
    }
    //MARK: - Setup Methods
    private func setupMessageListTableController() {
        messageTableController = MessageListTableController(tableView: messageTableView)
    }
}

