//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by rahul thengadi on 21/06/23.
//

import XCTest


class FeedStore {
    var deleteCachedFeedCallCount = 0
}

class LocalFeedLoader {
    
    init(store: FeedStore) {
        
    }
}


class CacheFeedUseCaseTests: XCTestCase {
    
    func test_init_doesNotDeleteCacheUponCreation() {
        
        let store = FeedStore()
        _ = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }
    
}































