import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Array_UInt8HexExtTests.allTests),
    ]
}
#endif
