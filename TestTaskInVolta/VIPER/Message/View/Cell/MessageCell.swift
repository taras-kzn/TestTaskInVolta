//
//  MessageCell.swift
//  TestTaskInVolta
//
//  Created by Denis Tarasov on 26.06.2022.
//

import Foundation
import UIKit

final class MessageCell: UITableViewCell {

    static let reusedId = "MessageCell"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        backgroundColor = .gray
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
