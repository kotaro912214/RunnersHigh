//
//  RootViewModel.swift
//  RunnersHigh
//
//  Created by kotaro-seki on 2021/12/05.
//

import Foundation

protocol RootViewModelInput {}

protocol RootViewModelOutput {}

protocol RootViewModelInterface: AnyObject {
    var input: RootViewModelInput { get }
    var output: RootViewModelOutput { get }
}

final class RootViewModel: RootViewModelInterface {
    var input: RootViewModelInput { self }
    var output: RootViewModelOutput { self }

    init() {}
}

extension RootViewModel: RootViewModelInput {}

extension RootViewModel: RootViewModelOutput {}
