//
//  AppNavigation.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 24.05.23.
//

import SwiftUI

struct NavigationContainer: View {
    @State private var navigationPath = [NavigationRoute]()

    var body: some View {
        NavigationStack(path: $navigationPath) {
            SearchScreen(navigationPath: $navigationPath)
                .navigationDestination(for: NavigationRoute.self) { value in
                    switch value {
                    case .search:
                        SearchScreen(navigationPath: $navigationPath)
                    case let .list(query):
                        QuoteListScreen(navigationPath: $navigationPath, searchQuery: query)
                    case let .detail(quote):
                        QuoteDetailScreen(navigationPath: $navigationPath, quote: quote)
                    }
                }
        }
    }
}

struct NavigationContainer_Previews: PreviewProvider {
    static var previews: some View {
        NavigationContainer()
    }
}
