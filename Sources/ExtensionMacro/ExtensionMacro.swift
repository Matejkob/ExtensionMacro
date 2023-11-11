@attached(extension, conformances: Foo)
public macro AddFooProtocol() = #externalMacro(module: "ExtensionMacroMacros", type: "AddFooProtocolMacro")

public protocol Foo {
  func foo()
}

public extension Foo {
  func foo() {
    print("Extension implementation")
  }
}
