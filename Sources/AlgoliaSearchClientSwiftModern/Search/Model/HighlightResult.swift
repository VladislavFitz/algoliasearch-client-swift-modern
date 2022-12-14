import Foundation

/// Highlight result for an attribute of a hit.
public struct HighlightResult: Codable, Hashable {
  /// Value of this highlight.
  public let value: HighlightedString

  /// Match level.
  public let matchLevel: MatchLevel

  /// List of matched words.
  public let matchedWords: [String]
}
