//
//  MessageListModuleAssembly.swift
//  TestTaskInVolta
//
//  Created by Denis Tarasov on 26.06.2022.
//

class MessageListModuleAssembly {
    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController, delegate: MessageListModuleOutput? = nil) -> MessageListModuleInput? {

        if let viewController = viewInput as? MessageListViewController {
            return configure(viewController: viewController, delegate: delegate)
        }

        return nil
    }

    private func configure(viewController: MessageListViewController, delegate: MessageListModuleOutput?) -> MessageListModuleInput? {

        let presenter = MessageListPresenter()
        presenter.view = viewController
        presenter.delegate = delegate

        viewController.output = presenter

        return presenter
    }
}
