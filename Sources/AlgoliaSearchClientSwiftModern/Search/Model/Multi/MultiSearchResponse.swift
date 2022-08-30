//
//  MultiSearchResponse.swift
//
//
//  Created by Vladislav Fitc on 29.08.2022.
//

import Foundation

/// Wraps the list of multi search results (either FacetSearchResponse or SearchResponse)
public struct MultiSearchResponse: Decodable {
  /// List of result in the order they were submitted, one element for each IndexedQuery.
  public var results: [Either<SearchResponse, FacetSearchResponse>]

  /// - parameter results: List of result in the order they were submitted, one element for each IndexedQuery.
  public init(results: [Either<SearchResponse, FacetSearchResponse>]) {
    self.results = results
  }
}
