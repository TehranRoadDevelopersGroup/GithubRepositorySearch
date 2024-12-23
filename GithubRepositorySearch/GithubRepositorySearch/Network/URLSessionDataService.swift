//
//  URLSessionDataService.swift
//  GithubRepositorySearch
//
//  Created by 김효성 on 12/24/24.
//

import Foundation.NSURL

public protocol URLSessionDataService: Sendable {
  /**
   Convenience method to load data using a URLRequest, creates and resumes a URLSessionDataTask internally.
   
   - Parameter request: The URLRequest for which to load data.
   - Returns: Data and response.
   */
  func data(for request: URLRequest) async throws -> (Data, URLResponse)
  
  /**
   Convenience method to load data using a URLRequest, creates and resumes a URLSessionDataTask internally.
   
   - Parameters url: The URL for which to load data.
   - Returns: Data and response.
   */
  func data(from url: URL) async throws -> (Data, URLResponse)
}

extension URLSession: URLSessionDataService { }
