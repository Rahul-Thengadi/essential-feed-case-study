//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by rahul thengadi on 03/07/23.
//

import Foundation

func anyURL() -> URL {
    return URL(string: "https://any-url.com")!
}

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}
