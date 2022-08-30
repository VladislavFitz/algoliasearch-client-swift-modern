//
//  RequestTypeSupport.swift
//
//
//  Created by Vladislav Fitc on 11.08.2022.
//

import Foundation

struct RequestTypeSupport: OptionSet {
  let rawValue: Int
  static let read = RequestTypeSupport(rawValue: 1 << 0)
  static let write = RequestTypeSupport(rawValue: 1 << 1)
  static let universal: RequestTypeSupport = [.read, .write]
}

extension RequestTypeSupport: CustomStringConvertible {
  var description: String {
    if contains(.universal) {
      return "universal"
    }
    if contains(.read) {
      return "read"
    }
    if contains(.write) {
      return "write"
    }
    return "none"
  }
}
