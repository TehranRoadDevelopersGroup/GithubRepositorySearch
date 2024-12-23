//
//  GithubURL.swift
//  GithubRepositorySearch
//
//  Created by 김효성 on 12/22/24.
//

import Foundation.NSURL

public struct GithubURL: Sendable {
  public let wrappedValue: URL
  
  // TODO: - Host 추가
  init?(_ rawValue: String) {
    guard let url = URL(string: "" + rawValue) else { return nil }
    wrappedValue = url
  }
}
