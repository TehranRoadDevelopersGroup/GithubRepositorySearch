//
//  RegexService.swift
//  GithubRepositorySearch
//
//  Created by 김효성 on 12/21/24.
//

// TODO: - 지금은 RegexService 가 wholeMatch(of:) 만 사용할 수 있도록 설계되어있음. wholeMatch(in:), prefixMatch 등과 같은 다른 정규식 검사가 필요할때 사용할 수 있도록 인터페이스를 수정해야함. 제네럴한 인터페이스로 변경하고 다른 정규식 검사 인터페이스가 제네럴한 인터페이스를 상속받도록 할 것.
public protocol RegexService: Sendable {
  /**
   `input String` 이 `pattern Regex` 와 일치하는 경우 ` String?` 을 반환합니다.
   
   - Parameters:
      - input: 정규식을 검사할 문자열입니다.
      - of: 문자열을 검사할 정규식입니다.
   - Returns:
      - 문자열이 정규식과 일치한다면 반환합니다. 일치하지 않거나 정규식 검사가 오류를 발생시긴다면 `nil` 을 반환합니다.
   */
	func wholeMatch(input: String, of pattern: some RegexComponent<Substring>) -> String?
}

public struct RegexHelper: RegexService {
  public init() { }
}

extension RegexHelper {
  public func wholeMatch(
    input: String,
    of pattern: some RegexComponent<Substring>
  ) -> String? {
    guard let matched = input.wholeMatch(of: pattern) else { return nil }
    return String(matched.output)
  }
}
