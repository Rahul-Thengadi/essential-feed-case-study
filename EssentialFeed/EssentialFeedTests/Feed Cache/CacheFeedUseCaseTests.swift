//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by rahul thengadi on 01/07/23.
//

import XCTest

class LocalFeedLoader {
    
    init(store: FeedStore) {
        
    }
}

class FeedStore {
    var deleteCachedFeedCallCount = 0
}

class CacheFeedUseCaseTests: XCTestCase {
    
    func test_init_doesNotDeleteCacheUponCreation() {
        let store = FeedStore()
        _ = LocalFeedLoader(store: store)
        XCTAssertEqual(store.deleteCachedFeedCallCount, 0)
    }
}










