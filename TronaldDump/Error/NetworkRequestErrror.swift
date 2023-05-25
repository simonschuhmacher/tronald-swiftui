//
//  NetworkRequestErrror.swift
//  TronaldDump
//
//  Created by Simon Schuhmacher on 25.05.23.
//

import Foundation

enum NetworkRequestError: Error {
    case unexpectedStatusCode
    case sessionError(Error)
    case decodingError(Error)
}
