import XCTest
@testable import Array_UInt8HexExt

final class Array_UInt8HexExtTests: XCTestCase {
    func testCreateArrayUInt8FromHex() {
        let d = Array<UInt8>(hex: "abcdef")
        XCTAssertEqual(d[0], 0xab)
        XCTAssertEqual(d[1], 0xcd)
        XCTAssertEqual(d[2], 0xef)
    }
    
    func testCreateArrayUInt8FromPrefixedHex() {
        let d = Array<UInt8>(hex: "0xabcdef")
        
        XCTAssertEqual(d[0], 0xab)
        XCTAssertEqual(d[1], 0xcd)
        XCTAssertEqual(d[2], 0xef)
    }
    
    func testArrayUInt8ToHexString() {
        let d = Array<UInt8>(hex: "0xabcdef")
        XCTAssertEqual(d.toHexString(), "abcdef")
    }
    
    func testArrayUInt8ToHexStringWith0x() {
        let d = Array<UInt8>(hex: "0xabcdef")
        XCTAssertEqual(d.toHexString(true), "0xabcdef")
    }

    static var allTests = [
        ("Test creating Array<UInt8> from hex string", testCreateArrayUInt8FromHex),
    ]
}
