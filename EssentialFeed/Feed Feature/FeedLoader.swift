//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Ермоленко Константин on 11.08.2021.
//

import Foundation

public enum LoadFeedResult<Error: Swift.Error> {
    case success([FeedItem])
    case failure(Error)
}

extension LoadFeedResult: Equatable where Error: Equatable {}

protocol FeedLoader {
    associatedtype Error: Swift.Error
    
    func load(complition: @escaping (LoadFeedResult<Error>) -> Void)
}
