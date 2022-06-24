// swift-tools-version:5.0

import PackageDescription

let package = Package(
	name: "Biometry",
	platforms: [
		.iOS("11.0"),
		.macOS("10.13.2"),
	],
	products: [
		.library(
			name: "Biometry",
			targets: ["Biometry"]),
	],
	targets: [
		.target(
			name: "Biometry",
			dependencies: []),
	]
)
