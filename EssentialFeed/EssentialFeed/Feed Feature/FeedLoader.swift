//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Rahul Thengadi on 17/04/21.
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}


public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
