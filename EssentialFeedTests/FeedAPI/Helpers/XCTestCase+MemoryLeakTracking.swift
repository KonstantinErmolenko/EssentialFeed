//
//  XCTestCase+MemoryLeakTracking.swift
//  EssentialFeedTests
//
//  Created by Ермоленко Константин on 31.08.2021.
//

import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ sut: AnyObject, file: StaticString = #filePath, line: UInt = #line) {
        addTeardownBlock { [weak sut] in
            XCTAssertNil(sut, "Instance should have been deallocated. Pontential memory leak.", file: file, line: line)
        }
    }
}
