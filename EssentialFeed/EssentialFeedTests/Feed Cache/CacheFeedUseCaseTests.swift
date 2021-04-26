//
//  CacheFeedUseCaseTests.swift
//  EssentialFeedTests
//
//  Created by Rahul Thengadi on 26/04/21.
//

import XCTest

class LocalFeedLoader {
    init(store: FeedStore) {
        
    }
}

class FeedStore {
    var deleteCacheFeedCount = 0
}

class CacheFeedUseCaseTests: XCTestCase {

    func test_init_doesNotDeleteCacheUponCreation() {
        let store = FeedStore()
        _ = LocalFeedLoader(store: store)
        
        XCTAssertEqual(store.deleteCacheFeedCount, 0)
    }

}
