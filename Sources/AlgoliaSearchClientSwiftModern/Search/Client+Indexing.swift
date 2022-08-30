//
//  Client+Indexing.swift
//
//
//  Created by Vladislav Fitc on 29.08.2022.
//

import Foundation

public extension Client {
  func listIndices() async throws -> IndicesListResponse {
    let responseData = try await transport.perform(method: .get,
                                                   path: "/1/indexes",
                                                   headers: [:],
                                                   body: nil,
                                                   requestType: .read)
    return try jsonDecoder.decode(IndicesListResponse.self, from: responseData)
  }
}
