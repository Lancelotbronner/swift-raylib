# Raylib Interop

How to use `CRaylib` to communicate between the C and Swift functions.

## Overview

You can import the `CRaylib` module to get access to the C functions of raylib, raymath and rlgl.

If you need to retrieve the raylib structure from a Swift wrapper, use `.toRaylib`. You can usually convert it back by using `.toSwift` on the raylib structure but some may require a parameter or two.

If you have a raylib structure which may or may not require memory management, it will conform to the ``MemoryManageable`` protocol and as such exposes ``MemoryManageable/toManaged`` to automatically unload the resource whenever it is no longer in use and ``MemoryManageable/toUnmanaged`` to wrap it without any additional memory management. 

## Topics

### <!--@START_MENU_TOKEN@-->Group<!--@END_MENU_TOKEN@-->

- <!--@START_MENU_TOKEN@-->``Symbol``<!--@END_MENU_TOKEN@-->
