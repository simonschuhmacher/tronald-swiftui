//
//  NavigationRoute.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 24.05.23.
//

import Foundation

enum NavigationRoute {
    case search
    case list(String)
    case detail(Quote)
}

extension NavigationRoute: Hashable {}
