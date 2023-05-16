<img align="left" style="padding-right: 10px" src="https://github.com/Lancelotbronner/swift-raylib-workspace/blob/main/Assets/Logo/256x256.png?raw=true" width="256px">

Swift bindings for [raylib](http://www.raylib.com/), **a simple and easy-to-use library to enjoy videogames programming.**

> NOTE for ADVENTURERS: raylib is a programming library to enjoy videogames programming; no fancy interface, no visual helpers, no debug button... just coding in the most pure spartan-programmers way.
>
> ~[raysan5](https://github.com/raysan5/raylib)

Ready to learn? Jump to [code examples](https://github.com/Lancelotbronner/swift-raylib-examples)!

[![Chat on Discord](https://img.shields.io/discord/426912293134270465.svg?logo=discord)](https://discord.gg/raylib)
[![Chat on Reddit](https://img.shields.io/reddit/subreddit-subscribers/raylib?style=social)](https://www.reddit.com/r/raylib/)

## 📖 Documentation

Documentation is available via DocC. For Xcode users simply go to `Product > Build Documentation` or press `⌃⇧⌘D`. For others the documentation is available in the [releases](https://github.com/Lancelotbronner/swift-raylib/releases) as a website you can run locally.

## 🏗 Getting Started

### Install Raylib

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

You can then add `swift-raylib` as a dependency. If using SwiftPM, add the following line to your dependencies.

```swift
.package(url: "https://github.com/Lancelotbronner/swift-raylib.git", from: "4.5.0")
```

You can use the following modules.

```swift
import Raylib

// If you need to interop with the C library directly
import CRaylib
```
