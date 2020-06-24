//
// StdLibX Code (Tests)
// Copyright © Ben Sova 2020 (MIT)
//

import XCTest

class StringedArraysTests: XCTestCase {

    public func testSplit() {
        print("\n=--StdLibX Stringed-Arrays Split--------------------------=\n")
        let stringArray = ["First", "Second", "Third", "Forth", "Fifth"]
        print("Original String Array: \(stringArray)")
        let orSplitArray = stringArray.orSplit()
        XCTAssert(orSplitArray == "First, Second, Third, Forth, or Fifth",
                  false: "The String Array Or Split did not match expected output. Expected: \("First, Second, Third, Forth, or Fifth"). Got: \(orSplitArray)",
                  true: "The String Array Or Split did match as expected output. Proof: \(orSplitArray)")
        let andSplitArray = stringArray.andSplit()
        XCTAssert(andSplitArray == "First, Second, Third, Forth, and Fifth",
                  false: "The String Array And Split did not match expected output. Expected: \("First, Second, Third, Forth, and Fifth"). Got: \(andSplitArray)",
                  true: "The String Array And Split did match as expected output. Proof: \(andSplitArray)")
        print("\n=---------------------------------------------------------=\n")
    }

    static var myTests = [
        ("StringedArrays Split Test", testSplit)
    ]

}