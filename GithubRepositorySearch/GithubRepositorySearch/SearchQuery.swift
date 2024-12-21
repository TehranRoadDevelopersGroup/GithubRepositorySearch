//
//  SearchQuery.swift
//  GithubRepositorySearch
//
//  Created by 김효성 on 12/22/24.
//

/**
 검색을 하기 위한 검색어 타입입니다.
 */
public struct SearchQuery: Sendable {
  static private let pattern: Regex = #/^[a-zA-Z0-9가-힣]+$/#
  public let wrappedValue: String

  /**
   `#/^[a-zA-Z0-9가-힣]+$/#` 정규식에 일치하지 않으면 `nil` 을 반환합니다.
   */
  public init?(
    _ rawValue: String,
    regexService: RegexService = RegexHelper()
  ) {
    guard let rawValue = regexService.wholeMatch(
      input: rawValue,
      of: SearchQuery.pattern
    ) else { return nil }
    self.wrappedValue = rawValue
  }
}

// TODO: - 검색했던 검색어를 저장하기 위해 Codable 채택이 필요할 수 있다.
