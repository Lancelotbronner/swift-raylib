// swift-tools-version:6.1

import PackageDescription

let package = Package(
	name: "swift-raylib",
	products: [
		.library(name: "RaylibKit", targets: ["RaylibKit"]),
	],
	traits: [
		.default(enabledTraits: ["X11"]),
		"X11",
		"Wayland",
	],
	dependencies: [
		.package(
			url: "https://github.com/Lancelotbronner/raylib-build.git",
			from: "5.5.2",
			traits: [
				.trait(name: "Wayland", condition: .when(traits: ["Wayland"])),
				.trait(name: "X11", condition: .when(traits: ["X11"])),
			],
		)
	],
	targets: [
		.target(name: "RaylibKit", dependencies: [
			.product(name: "raylib", package: "raylib-build"),
		]),
	]
)
