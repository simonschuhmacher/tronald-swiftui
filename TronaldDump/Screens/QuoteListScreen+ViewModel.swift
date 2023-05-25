//
//  QuoteListScreenViewModel.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 25.05.23.
//

import SwiftUI

extension QuoteListScreen {
    @MainActor class ViewModel: ObservableObject {
        private let tronalAPI = TronaldAPI()

        @Published private(set) var isLoading = true
        @Published private(set) var error: Error?
        @Published private(set) var quoteResponse: QuoteResponse?
        @Published var searchQuery: String

        init(searchQuery: String) {
            self.searchQuery = searchQuery
            Task {
                await fetchQuote()
            }
        }

        func fetchQuote() async {
            isLoading = true

            print("Starting network request")
            do {
                error = nil
                quoteResponse = try await tronalAPI.searchQuote(query: searchQuery)
            } catch {
                print("Error received in network request")
                self.error = error
                quoteResponse = nil
            }

            print("Network request finished.")
            isLoading = false
        }
    }
}
