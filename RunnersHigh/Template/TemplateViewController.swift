//
//  TemplateViewController.swift
//  RunnersHigh
//
//  Created by kotaro-seki on 2021/12/05.
//

import Foundation
import UIKit

final class TemplateViewController: UIViewController {
    // router -> weak ViewController -> viewModel & viewOperator -> router
    //        -> weak viewOperator
    static func instantiate(router: TemplateRouter) -> Self {
        let viewModel = TemplateViewModel(router: router)
        let creator: Creator = {
            TemplateViewController(coder: $0, viewModel: viewModel)
        }
        guard let vc = R.storyboard.templateViewController()
                .instantiateInitialViewController(creator: creator) as? Self else {
            preconditionFailure("TemplateViewController cannot instantiate")
        }
        return vc
    }

    init?(coder: NSCoder, viewModel: TemplateViewModelInterface & TemplateViewOperator) {
        self.viewModel = viewModel
        super.init(coder: coder)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not inplemented")
    }

    var viewOperator: TemplateViewOperator {
        viewModel
    }

    private let viewModel: TemplateViewModelInterface & TemplateViewOperator
}
