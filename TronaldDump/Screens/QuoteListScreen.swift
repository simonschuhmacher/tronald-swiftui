//
//  QuoteListScreen.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 24.05.23.
//

import SwiftUI

struct QuoteListScreen: View {
    @StateObject private var viewModel: ViewModel

    @Binding var navigationPath: [NavigationRoute]

    init(navigationPath: Binding<[NavigationRoute]>, searchQuery: String) {
        _navigationPath = navigationPath
        _viewModel = StateObject(wrappedValue: ViewModel(searchQuery: searchQuery))
    }

    var body: some View {
        VStack {
            if viewModel.isLoading {
                Spacer()
                ProgressView()
                    .controlSize(.large)
                    .padding()
                Spacer()
            } else if let error = viewModel.error {
                Spacer()
                Text("An error occured while searching for «\(viewModel.searchQuery)».\n\(error.localizedDescription)")
                    .padding()
                Spacer()
            } else if let quoteResponse = viewModel.quoteResponse, quoteResponse.embedded.quotes.count > 0 {
                QuoteListView(quotes: quoteResponse.embedded.quotes)
            } else {
                Spacer()
                Text("No results found for «\(viewModel.searchQuery)»")
                    .padding()
                Spacer()
            }
        }
        .multilineTextAlignment(.center)
        .frame(maxWidth: .infinity)
        .background(Color(.systemGroupedBackground))
        .navigationTitle(viewModel.searchQuery)
    }
}

struct QuoteListScreen_Previews: PreviewProvider {
    @State private static var navigationPath = [NavigationRoute]()
    private static let searchQuery = "Hello World"

    static var previews: some View {
        QuoteListScreen(navigationPath: $navigationPath, searchQuery: searchQuery)
    }
}
