// swift-tools-version:6.1

import PackageDescription

let package = Package(
	name: "swift-raylib",
	products: [
		.library(name: "RaylibKit", targets: ["RaylibKit"]),
	],
	dependencies: [
		.package(url: "https://github.com/Lancelotbronner/raylib-build.git", from: "6.2.0"),
	],
	targets: [
		.target(name: "RaylibKit", dependencies: [
			.product(name: "raylib", package: "raylib-build"),
		]),
	]
)
