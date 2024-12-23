//
//  RegexWholeMatchHelperTests.swift
//  GithubRepositorySearchTests
//
//  Created by 김효성 on 12/22/24.
//

import Testing
@testable import GithubRepositorySearch

struct RegexWholeMatchHelperTests {
  private let regexService: RegexService = RegexWholeMatchHelper()
  private let searchQueryPattern: some RegexComponent<Substring> = #/^[a-zA-Z0-9가-힣]+$/#
  
  @Test func testWholeMatchWhenKoreanThenInputVaild() async throws {
    let input = "안녕하세요"
    
    let matched = regexService
      .match(
        input: input,
        pattern: searchQueryPattern
      )
    
    #expect(input == matched)
  }
  
  @Test func testWholeMatchWhenEnglishThenInputVaild() async throws {
    let input = "abcdef"
    
    let matched = regexService
      .match(
        input: input,
        pattern: searchQueryPattern
      )
    
    #expect(input == matched)
  }
  
  @Test func testWholeMatchWhenNumberThenInputVaild() async throws {
    let input = "123123"
    
    let matched = regexService
      .match(
        input: input,
        pattern: searchQueryPattern
      )
    
    #expect(input == matched)
  }
  
  @Test func testWholeMatchWhenMixThenInputVaild() async throws {
    let input = "123123abcdef안녕하세요"
    
    let matched = regexService
      .match(
        input: input,
        pattern: searchQueryPattern
      )
    
    #expect(input == matched)
  }
  
  @Test func testWholeMatchWhenKoreanThenInputInvaild() async throws {
    let input = "안녕ㅎㅏ세요"
    
    let matched = regexService
      .match(
        input: input,
        pattern: searchQueryPattern
      )
    
    #expect(matched == nil)
  }
}
