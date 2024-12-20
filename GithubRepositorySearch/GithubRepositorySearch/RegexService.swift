protocol RegexService: Sendable {
	func wholeMatch(input: String, of pattern: some RegexComponent<Substring>) -> String?
}