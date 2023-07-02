//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by rahul thengadi on 02/07/23.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}

