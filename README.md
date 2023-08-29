<img align="left" style="padding-right: 10px" src="https://github.com/Lancelotbronner/swift-raylib-workspace/blob/main/Assets/Logo/256x256.png?raw=true" width="256px">

Swift bindings for [raylib](http://www.raylib.com/), **a simple and easy-to-use library to enjoy videogames programming.**

> NOTE for ADVENTURERS: raylib is a programming library to enjoy videogames programming; no fancy interface, no visual helpers, no debug button... just coding in the most pure spartan-programmers way.
>
> ~[raysan5](https://github.com/raysan5/raylib)

Ready to learn? Jump to [code examples][examples]!

[![Chat on Discord](https://img.shields.io/discord/426912293134270465.svg?logo=discord)](https://discord.gg/raylib)
[![Chat on Reddit](https://img.shields.io/reddit/subreddit-subscribers/raylib)](https://www.reddit.com/r/raylib/)

<br>

# RaylibKit

A swifty interface and app lifecycle to ease development with raylib!

## Features

- Use a swifty interface!
- Support for `@main` lifecycle
- Decent examples collection with [+23 code examples][examples]!
- Extensive documentation, both in your IDE and via DocC!
- You can still do C interop if needed, but consider opening a pull request!

```swift
import RaylibKit

@main struct MinimalWindow: Applet {
	
	init() {
		Window.create(800, by: 450, title: "Example - Core - Basic Window")
		Application.target(fps: 60)
	}
	
	func draw() {
		Renderer2D.text(center: "Congrats! You created your first window!", color: .lightGray)
	}

}
```

![The result of the above snippet](https://github.com/Lancelotbronner/swift-raylib-examples/blob/main/Assets/screenshots/minimal-dark.png?raw=true)

## 🚀 Getting Started

First you'll need to [install raylib as a system library](#install-raylib-as-a-system-library) and [add this package as a dependency](#add-swift-raylib-as-a-package-dependency).

You can then start learning! Check out the [examples] to quickly get an idea and make sure your installation works!

Documentation is available via DocC. For Xcode users simply go to `Product > Build Documentation` or press `⌃⇧⌘D` *(alt-shift-command-D)*. For others the documentation is available in the [releases][releases] as a website you can run locally.

### Install `raylib` as a system library

You should start by installing raylib as a system library. 

The easiest way is via one of the [supported package managers](https://repology.org/project/raylib/versions). Here are a few common examples.

**macOS - Homebrew**
```sh
brew install raylib
```

**Linux - AUR**
```sh
apt-get install raylib
```

**Windows - vcpkg**
```sh
vcpkg install raylib
```

If package managers aren't a possibility, [check raylib's instructions](https://github.com/raysan5/raylib#build-and-installation).

### Add `swift-raylib` as a package dependency

Add the following line to your `Package.swift` dependencies...

```swift
.package(url: "https://github.com/Lancelotbronner/swift-raylib.git", from: "4.5.0")
```

...along with the following line to your target dependencies and `import RaylibKit`!

```swift
.product(name: "RaylibKit", package: "RaylibKit"),
```

### Interop with C

If you still need to interop, you can `import CRaylib` and use the [cheatsheet][cheatsheet] for reference.

## 🏗 Contributing

There is a fully configured workspace for this repository, associated examples and developer tools at [swift-raylib-workspace](https://github.com/Lancelotbronner/swift-raylib-workspace). The goal is to reduce the clone size of `swift-raylib` as its used as a dependency and avoids adding too many automatically generated Xcode schemes.

<!-- Footnotes & Links -->

[cheatsheet]: https://www.raylib.com/cheatsheet/cheatsheet.html
[examples]: https://github.com/Lancelotbronner/swift-raylib-examples
[releases]: https://github.com/Lancelotbronner/swift-raylib/releases
