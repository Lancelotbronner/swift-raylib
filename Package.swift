// swift-tools-version:5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

//MARK: - Package

let package = Package(
	name: "RaylibKit",
	platforms: [
		.macOS(.v12),
	],
	products: [
		.library(name: "RaylibKit", targets: ["RaylibKit"]),
	],
	targets: [
		.systemLibrary(
			name: "raylib",
			pkgConfig: "raylib",
			providers: [
				.brew(["raylib"]),
			]),

		.target(
			name: "RaylibKit",
			dependencies: ["raylib"]),

		.testTarget(
			name: "RaylibTests",
			dependencies: ["RaylibKit"]),
	]
)
