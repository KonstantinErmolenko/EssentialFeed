//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Ермоленко Константин on 13.08.2021.
//

import Foundation

public protocol HTTPClient {
    func get(from url: URL, complition: @escaping (Error) -> Void)
}

public final class RemoteFeedLoader {
    private let url: URL
    private let client: HTTPClient

    public enum Error: Swift.Error {
        case connectivity
    }

    public init(url: URL, client: HTTPClient) {
        self.url = url
        self.client = client
    }

    public func load(complition: @escaping (Error) -> Void = { _ in }) {
        client.get(from: url) { error in
            complition(.connectivity)
        }
    }
}