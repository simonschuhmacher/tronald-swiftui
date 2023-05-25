//
//  SearchView.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 24.05.23.
//

import SwiftUI

struct SearchView: View {
    @State private var query = ""

    let onSubmit: (String) -> Void

    var body: some View {
        HStack {
            TextField("Search...", text: $query)
                .font(.system(size: 24, weight: .bold))
                .keyboardType(.default)
                .submitLabel(.search)
                .onSubmit {
                    onSubmit(query)
                }
                .padding()
            Button {
                onSubmit(query)
            } label: {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                }
                .frame(width: 60, height: 60)
                .background(.black)
                .cornerRadius(10)
                .padding(6)
            }
        }
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 1)
        )
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView { query in
            print("Searched for \"\(query)\"")
        }
    }
}
