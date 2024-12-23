//
//  RegexService.swift
//  GithubRepositorySearch
//
//  Created by 김효성 on 12/21/24.
//

public protocol RegexService: Sendable {
  /**
   `input String` 이 `pattern Regex` 조건에 부합하는 경우 ` String?` 을 반환합니다.
   
   - Parameters:
   - input: 정규식을 검사할 문자열입니다.
   - of: 문자열을 검사할 정규식입니다.
   - Returns:
   - 문자열이 정규식 조건에 부합한다면 반환합니다. 일치하지 않거나 정규식 검사가 오류를 발생시긴다면 `nil` 을 반환합니다.
   */
  func match(input: String, pattern: some RegexComponent<Substring>) -> String?
}

// MARK: - WholeMatchHelper
public struct RegexWholeMatchHelper: RegexService {
  public init() {}
}

extension RegexWholeMatchHelper {
  public func match(
    input: String,
    pattern: some RegexComponent<Substring>
  ) -> String? {
    guard let matched = input.wholeMatch(of: pattern) else { return nil }
    return String(matched.output)
  }
}
