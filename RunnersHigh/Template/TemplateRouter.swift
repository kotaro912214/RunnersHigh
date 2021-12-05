//
//  TemplateRouter.swift
//  RunnersHigh
//
//  Created by kotaro-seki on 2021/12/05.
//

import Foundation
import UIKit

protocol TemplateViewOperator: AnyObject {}

protocol TemplateRouterInterface: AnyObject {}

final class TemplateRouter {
    static func instantiate() -> TemplateRouter {
        let router = TemplateRouter()
//        let vc = TemplateViewController.instantiate(router: router)
//        router.viewController = vc
//        router.viewOperator = vc.viewOperator
        return router
    }

    private init() {}

    private(set) weak var viewController: UIViewController?
    private(set) weak var viewOperator: TemplateViewOperator?
}

extension TemplateRouter: TemplateRouterInterface {}
