//
//  HTTPClient.swift
//  EssentialFeed
//
//  Created by Rahul Thengadi on 18/04/21.
//

import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    func get(from url: URL, completion: @escaping (HTTPClientResult) -> Void)
}
