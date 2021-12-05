//
//  TemplateViewModel.swift
//  RunnersHigh
//
//  Created by kotaro-seki on 2021/12/05.
//

import Foundation

protocol TemplateViewModelInput {}

protocol TemplateViewModelOutput {}

protocol TemplateViewModelInterface: AnyObject {
    var input: TemplateViewModelInput { get }
    var output: TemplateViewModelOutput { get }
}

final class TemplateViewModel: TemplateViewModelInterface {
    var input: TemplateViewModelInput { self }
    var output: TemplateViewModelOutput { self }

    private let router: TemplateRouterInterface

    init(router: TemplateRouterInterface) {
        self.router = router
    }
}

extension TemplateViewModel: TemplateViewOperator {}

extension TemplateViewModel: TemplateViewModelInput {}

extension TemplateViewModel: TemplateViewModelOutput {}
