import ExtensionMacro

@AddFooProtocol
public struct Bar {
  func test() { foo() }

  private func foo() {
    print("Internal implementation")
  }
}

let bar = Bar()

bar.foo()

bar.test()
