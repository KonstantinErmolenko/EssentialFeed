//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Ермоленко Константин on 11.08.2021.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(complition: @escaping (LoadFeedResult) -> Void)
}
