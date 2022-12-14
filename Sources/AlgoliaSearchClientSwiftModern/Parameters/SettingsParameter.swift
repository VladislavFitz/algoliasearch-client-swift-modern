import Foundation

public protocol SettingsParameter: Encodable {
  var key: String { get }
}

@resultBuilder
enum SettingsParametersBuilder {
  static func buildBlock() -> [SettingsParameter] { [] }
}

extension SettingsParametersBuilder {
  static func buildBlock(_ parameters: SettingsParameter...) -> [SettingsParameter] { parameters }
}
