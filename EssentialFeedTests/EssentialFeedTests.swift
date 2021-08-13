//
//  EssentialFeedTests.swift
//  EssentialFeedTests
//
//  Created by Ермоленко Константин on 11.08.2021.
//

import XCTest
@testable import EssentialFeed

class RemoteFeedLoader {

}

class HTTPClient {
    var requestedURL: URL?
}

class EssentialFeedTests: XCTestCase {

    func test_init_doesNotRequestDataFromURL() {
        let client = HTTPClient()
        _ = RemoteFeedLoader()

        XCTAssertNil(client.requestedURL)
    }
}
