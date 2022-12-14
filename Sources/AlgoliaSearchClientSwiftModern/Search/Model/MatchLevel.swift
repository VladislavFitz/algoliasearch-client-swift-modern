import Foundation

/// Match level of a highlight or snippet result.
public enum MatchLevel: String, Codable, Hashable, CustomStringConvertible {
  /// All the query terms were found in the attribute.
  case none

  /// Only some of the query terms were found in the attribute.
  case partial

  /// None of the query terms were found in the attribute.
  case full

  public var description: String {
    return rawValue
  }
}
