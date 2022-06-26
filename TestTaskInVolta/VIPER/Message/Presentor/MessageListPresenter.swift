//
//  MessageListPresenter.swift
//  TestTaskInVolta
//
//  Created by Denis Tarasov on 26.06.2022.
//

import Foundation

class MessageListPresenter: MessageListViewOutput, MessageListModuleInput {

    weak var view: MessageListViewInput!
    weak var delegate: MessageListModuleOutput?


    // MARK: - MessageListViewOutput methods
    func viewIsReady() {
        view.setupInitialState()
    }
}
