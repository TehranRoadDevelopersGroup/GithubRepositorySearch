//
//  CoreRequestType.swift
//  GithubRepositorySearch
//
//  Created by 김효성 on 12/24/24.
//

public protocol CoreRequestType: Sendable {
  typealias Parameters = [String: any Sendable]
  var url: GithubURL { get }
  var httpMethod: HTTPMethod { get }
  var paramters: Parameters { get }
}
