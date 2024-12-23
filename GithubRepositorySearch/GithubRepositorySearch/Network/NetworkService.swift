//
//  NetworkService.swift
//  GithubRepositorySearch
//
//  Created by 김효성 on 12/24/24.
//

public protocol NetworkService: Sendable {
  func request<T>(request: some CoreRequestType, responseType: T.Type) async throws -> T where T: Decodable, T: Sendable
}
