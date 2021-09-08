//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Ермоленко Константин on 19.08.2021.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
