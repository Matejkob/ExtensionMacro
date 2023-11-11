import SwiftCompilerPlugin
import SwiftSyntax
import SwiftSyntaxBuilder
import SwiftSyntaxMacros

public enum AddFooProtocolMacro: ExtensionMacro {
  public static func expansion(
    of node: AttributeSyntax,
    attachedTo declaration: some DeclGroupSyntax,
    providingExtensionsOf type: some TypeSyntaxProtocol,
    conformingTo protocols: [TypeSyntax],
    in context: some MacroExpansionContext
  ) throws -> [ExtensionDeclSyntax] {
    try [ExtensionDeclSyntax("extension \(type.trimmed): Foo {}")]
  }
}


@main
struct ExtensionMacroPlugin: CompilerPlugin {
    let providingMacros: [Macro.Type] = [
      AddFooProtocolMacro.self,
    ]
}
