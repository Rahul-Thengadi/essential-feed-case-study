//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Rahul Thengadi on 17/04/21.
//

import Foundation

public struct FeedItem: Equatable {
    let id: UUID
    let description: String?
    let location: String?
    let imageURL: URL
}
