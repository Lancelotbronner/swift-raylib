// swift-tools-version:6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

//MARK: - Package

let package = Package(
	name: "swift-raylib",
	products: [
		.library(name: "RaylibKit", targets: ["RaylibKit"]),
	],
	dependencies: [
		.package(url: "https://github.com/Lancelotbronner/raylib-build.git", from: "5.5.1"),
	],
	targets: [
		.target(name: "RaylibKit", dependencies: [
			.product(name: "raylib", package: "raylib-build"),
		]),
	]
)
