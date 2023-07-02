//
//  FeedStoreSpy.swift
//  EssentialFeedTests
//
//  Created by rahul thengadi on 02/07/23.
//

import Foundation
import EssentialFeed

class FeedStoreSpy: FeedStore {
    var deletionCompletions = [DeletionCompletion]()
    var insertionCompletions = [InsertionCompletion]()
   
    private(set) var receivedMessages = [ReceivedMessages]()
    
    enum ReceivedMessages: Equatable {
        case deleteCachedFeed
        case insert([LocalFeedImage], Date)
    }
    
    func deleteCachedFeed(completion: @escaping DeletionCompletion) {
        deletionCompletions.append(completion)
        receivedMessages.append(.deleteCachedFeed)
    }
    
    func completeDeletion(with error: Error, at index: Int = 0) {
        deletionCompletions[index](error)
    }
    
    func completeDeletionSuccessfully(at index: Int = 0) {
        deletionCompletions[index](nil)
    }
    
    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion) {
        receivedMessages.append(.insert(feed, timestamp))
        insertionCompletions.append(completion)
    }
    
    func completeInsertion(with error: Error,at index: Int = 0) {
        insertionCompletions[index](error)
    }
    
    func completeInsertionSuccessfully(at index: Int = 0) {
        insertionCompletions[index](nil)
    }
}
