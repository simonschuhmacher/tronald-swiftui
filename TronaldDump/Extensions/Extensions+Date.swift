//
//  Extensions+Date.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 25.05.23.
//

import Foundation

extension Date {
    func defaultDateString() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none

        return formatter.string(from: self)
    }
}
