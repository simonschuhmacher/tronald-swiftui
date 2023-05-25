//
//  SearchScreen.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 24.05.23.
//

import SwiftUI

struct SearchScreen: View {
    @Binding var navigationPath: [NavigationRoute]

    var body: some View {
        VStack {
            Spacer()
            SearchView { query in
                navigationPath.append(.list(query))
            }
            .padding(32)
            Spacer()
        }
        .background(Color(.systemGroupedBackground))
        .navigationTitle("Search")
    }
}

struct SearchScreen_Previews: PreviewProvider {
    @State private static var navigationPath = [NavigationRoute]()

    static var previews: some View {
        SearchScreen(navigationPath: $navigationPath)
    }
}
