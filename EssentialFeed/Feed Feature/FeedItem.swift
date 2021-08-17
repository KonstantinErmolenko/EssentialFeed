//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Ермоленко Константин on 11.08.2021.
//

import Foundation

public struct FeedItem: Equatable {
    public let id: UUID
    public let description: String?
    public let location: String?
    public let imageURL: URL
}
