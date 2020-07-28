//
//  FindMapTests.swift
//  StdLibXTests
//
//  Created by Benjamin Sova on 7/23/20.
//

import XCTest

class FindMapTests: XCTestCase {

    func testFindMap() throws {
        print("\n=--Sequence FindMap/ContainsAt Tests-----------------------=\n")
        let simpleTupleSequence = [(one: "String", two: 10), (one: "Int", two: 34), (one: "Float", two: 34), (one: "Double", two: 13), (one: "String", two: 135), (one: "Find Me!", two: 100)]
        print("Simple Tuple Sequence: \(simpleTupleSequence)")
        let findMeTuplesBool = simpleTupleSequence.containsAt("Find Me!", at: \.one)
        XCTAssert(
            findMeTuplesBool,
            false: "Unable to find \"Find Me!\" under \"one\" in \"simpleTupleSequence\" using \"-> Bool\" (Got: \"\(findMeTuplesBool)\")",
            true: "Found \"Find Me!\" under \"one\" in \"simpleTupleSequence\" using \"-> Bool\" (Proof: \"\(findMeTuplesBool)\")"
        )
        let findMeTuplesElements = simpleTupleSequence.findMap("Find Me!", at: \.one)
        XCTAssert(
            findMeTuplesElements[0] == (one: "Find Me!", two: 100) && findMeTuplesElements.count == 1,
            false: "Unable to find \"Find Me!\" under \"one\" in \"simpleTupleSequence\" using \"-> [Element]\" (Got: \"\(findMeTuplesElements)\")",
            true: "Found \"Find Me!\" under \"one\" in \"simpleTupleSequence\" using \"-> [Element]\" (Proof: \"\(findMeTuplesElements)\")"
        )
        print("\n=----------------------------------------------------------=\n")
    }

    static var allTests = [
        ("Sequence FindMap Tests", testFindMap)
    ]

}