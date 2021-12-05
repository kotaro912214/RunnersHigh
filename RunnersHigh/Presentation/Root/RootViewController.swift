//
//  RootViewController.swift
//  RunnersHigh
//
//  Created by kotaro-seki on 2021/12/05.
//

import Foundation
import UIKit

final class RootViewController: UIViewController {

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    private let viewModel = RootViewModel()
}
