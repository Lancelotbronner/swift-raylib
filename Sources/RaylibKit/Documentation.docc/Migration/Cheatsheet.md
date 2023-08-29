# Cheatsheet

**raylib v4.5-dev    |    bindings 46%**

This document presents a detailed overview of the raylib cheatsheet along with its corresponding Swift symbol(s).

This document currently has a 46% coverage, contributions are welcome!

> Note: This file is generated (and badly so), any improvement suggestions are welcome.

## Symbols

#### RAYLIB_VERSION_MAJOR
This symbol has no documentation
Language|Symbol
---|---
C|`#define RAYLIB_VERSION_MAJOR`
Swift|*unimplemented*
#### RAYLIB_VERSION_MINOR
This symbol has no documentation
Language|Symbol
---|---
C|`#define RAYLIB_VERSION_MINOR`
Swift|*unimplemented*
#### RAYLIB_VERSION_PATCH
This symbol has no documentation
Language|Symbol
---|---
C|`#define RAYLIB_VERSION_PATCH`
Swift|*unimplemented*
#### RAYLIB_VERSION
This symbol has no documentation
Language|Symbol
---|---
C|`#define RAYLIB_VERSION`
Swift|``Raylib/version``
## Some basic Defines
### Some Basic Colors
```c
#define LIGHTGRAY  // Light Gray
#define GRAY       // Gray
#define DARKGRAY   // Dark Gray
#define YELLOW     // Yellow
#define GOLD       // Gold
#define ORANGE     // Orange
#define PINK       // Pink
#define RED        // Red
#define MAROON     // Maroon
#define GREEN      // Green
#define LIME       // Lime
#define DARKGREEN  // Dark Green
#define SKYBLUE    // Sky Blue
#define BLUE       // Blue
#define DARKBLUE   // Dark Blue
#define PURPLE     // Purple
#define VIOLET     // Violet
#define DARKPURPLE // Dark Purple
#define BEIGE      // Beige
#define BROWN      // Brown
#define DARKBROWN  // Dark Brown
#define WHITE      // White
#define BLACK      // Black
#define BLANK      // Blank (Transparent)
#define MAGENTA    // Magenta
#define RAYWHITE   // My own White (raylib logo)
```
> Note: Custom raylib color palette for amazing visuals on WHITE background

#### LIGHTGRAY
Light Gray
Language|Symbol
---|---
C|`#define LIGHTGRAY`
Swift|``Color/lightGray``
#### GRAY
Gray
Language|Symbol
---|---
C|`#define GRAY`
Swift|``Color/gray``
#### DARKGRAY
Dark Gray
Language|Symbol
---|---
C|`#define DARKGRAY`
Swift|``Color/darkGray``
#### YELLOW
Yellow
Language|Symbol
---|---
C|`#define YELLOW`
Swift|``Color/yellow``
#### GOLD
Gold
Language|Symbol
---|---
C|`#define GOLD`
Swift|``Color/gold``
#### ORANGE
Orange
Language|Symbol
---|---
C|`#define ORANGE`
Swift|``Color/orange``
#### PINK
Pink
Language|Symbol
---|---
C|`#define PINK`
Swift|``Color/pink``
#### RED
Red
Language|Symbol
---|---
C|`#define RED`
Swift|``Color/red-swift.type.property``
#### MAROON
Maroon
Language|Symbol
---|---
C|`#define MAROON`
Swift|``Color/maroon``
#### GREEN
Green
Language|Symbol
---|---
C|`#define GREEN`
Swift|``Color/green-swift.type.property``
#### LIME
Lime
Language|Symbol
---|---
C|`#define LIME`
Swift|``Color/lime``
#### DARKGREEN
Dark Green
Language|Symbol
---|---
C|`#define DARKGREEN`
Swift|``Color/darkGreen``
#### SKYBLUE
Sky Blue
Language|Symbol
---|---
C|`#define SKYBLUE`
Swift|``Color/skyBlue``
#### BLUE
Blue
Language|Symbol
---|---
C|`#define BLUE`
Swift|``Color/blue-swift.type.property``
#### DARKBLUE
Dark Blue
Language|Symbol
---|---
C|`#define DARKBLUE`
Swift|``Color/darkBlue``
#### PURPLE
Purple
Language|Symbol
---|---
C|`#define PURPLE`
Swift|``Color/purple``
#### VIOLET
Violet
Language|Symbol
---|---
C|`#define VIOLET`
Swift|``Color/violet``
#### DARKPURPLE
Dark Purple
Language|Symbol
---|---
C|`#define DARKPURPLE`
Swift|``Color/darkPurple``
#### BEIGE
Beige
Language|Symbol
---|---
C|`#define BEIGE`
Swift|``Color/beige``
#### BROWN
Brown
Language|Symbol
---|---
C|`#define BROWN`
Swift|``Color/brown``
#### DARKBROWN
Dark Brown
Language|Symbol
---|---
C|`#define DARKBROWN`
Swift|``Color/darkBrown``
#### WHITE
White
Language|Symbol
---|---
C|`#define WHITE`
Swift|``Color/white``
#### BLACK
Black
Language|Symbol
---|---
C|`#define BLACK`
Swift|``Color/black``
#### BLANK
Blank (Transparent)
Language|Symbol
---|---
C|`#define BLANK`
Swift|``Color/blank``
#### MAGENTA
Magenta
Language|Symbol
---|---
C|`#define MAGENTA`
Swift|``Color/magenta``
#### RAYWHITE
My own White (raylib logo)
Language|Symbol
---|---
C|`#define RAYWHITE`
Swift|``Color/raywhite``
## Structures Definition
#### Vector2
Vector2, 2 components
Language|Symbol
---|---
C|`struct Vector2;`
Swift|``Vector2f``
#### Vector3
Vector3, 3 components
Language|Symbol
---|---
C|`struct Vector3;`
Swift|``Vector3f``
#### Vector4
Vector4, 4 components
Language|Symbol
---|---
C|`struct Vector4;`
Swift|``Vector4f``
#### Quaternion
Quaternion, 4 components (Vector4 alias)
Language|Symbol
---|---
C|`typedef Vector4 Quaternion;`
Swift|*unimplemented*
#### Matrix
Matrix, 4x4 components, column major, OpenGL style, right-handed
Language|Symbol
---|---
C|`struct Matrix;`
Swift|``Matrix4x4f``
#### Color
Color, 4 components, R8G8B8A8 (32bit)
Language|Symbol
---|---
C|`struct Color;`
Swift|``Color``
#### Rectangle
Rectangle, 4 components
Language|Symbol
---|---
C|`struct Rectangle;`
Swift|``Rectangle``
#### Image
Image, pixel data stored in CPU memory (RAM)
Language|Symbol
---|---
C|`struct Image;`
Swift|``Texture``
#### Texture
Texture, tex data stored in GPU memory (VRAM)
Language|Symbol
---|---
C|`struct Texture;`
Swift|``Texture``
#### Texture2D
Texture2D, same as Texture
Language|Symbol
---|---
C|`typedef Texture Texture2D;`
Swift|``Texture``
#### TextureCubemap
TextureCubemap, same as Texture
Language|Symbol
---|---
C|`typedef Texture TextureCubemap;`
Swift|*unimplemented*
#### RenderTexture
RenderTexture, fbo for texture rendering
Language|Symbol
---|---
C|`struct RenderTexture;`
Swift|``RenderTexture``
#### RenderTexture2D
RenderTexture2D, same as RenderTexture
Language|Symbol
---|---
C|`typedef RenderTexture RenderTexture2D;`
Swift|``RenderTexture``
#### NPatchInfo
NPatchInfo, n-patch layout info
Language|Symbol
---|---
C|`struct NPatchInfo;`
Swift|*unimplemented*
#### GlyphInfo
GlyphInfo, font characters glyphs info
Language|Symbol
---|---
C|`struct GlyphInfo;`
Swift|*unimplemented*
#### Font
Font, font texture and GlyphInfo array data
Language|Symbol
---|---
C|`struct Font;`
Swift|*unimplemented*
### Camera, defines position/orientation in 3d space
```c
struct Camera3D;
typedef Camera3D Camera;
```
#### Camera3D
This symbol has no documentation
Language|Symbol
---|---
C|`struct Camera3D;`
Swift|``Camera3D``
#### Camera
This symbol has no documentation
Language|Symbol
---|---
C|`typedef Camera3D Camera;`
Swift|``Camera3D``
#### Camera2D
Camera2D, defines position/orientation in 2d space
Language|Symbol
---|---
C|`struct Camera2D;`
Swift|``Camera2D``
#### Mesh
Mesh, vertex data and vao/vbo
Language|Symbol
---|---
C|`struct Mesh;`
Swift|*unimplemented*
#### Shader
Shader
Language|Symbol
---|---
C|`struct Shader;`
Swift|``Shader``
#### MaterialMap
MaterialMap
Language|Symbol
---|---
C|`struct MaterialMap;`
Swift|*unimplemented*
#### Material
Material, includes shader and maps
Language|Symbol
---|---
C|`struct Material;`
Swift|*unimplemented*
#### Transform
Transform, vertex transformation data
Language|Symbol
---|---
C|`struct Transform;`
Swift|*unimplemented*
#### BoneInfo
Bone, skeletal animation bone
Language|Symbol
---|---
C|`struct BoneInfo;`
Swift|*unimplemented*
#### Model
Model, meshes, materials and animation data
Language|Symbol
---|---
C|`struct Model;`
Swift|*unimplemented*
#### ModelAnimation
ModelAnimation
Language|Symbol
---|---
C|`struct ModelAnimation;`
Swift|*unimplemented*
#### Ray
Ray, ray for raycasting
Language|Symbol
---|---
C|`struct Ray;`
Swift|*unimplemented*
#### RayCollision
RayCollision, ray hit information
Language|Symbol
---|---
C|`struct RayCollision;`
Swift|*unimplemented*
#### BoundingBox
BoundingBox
Language|Symbol
---|---
C|`struct BoundingBox;`
Swift|*unimplemented*
#### Wave
Wave, audio wave data
Language|Symbol
---|---
C|`struct Wave;`
Swift|*unimplemented*
#### AudioStream
AudioStream, custom audio stream
Language|Symbol
---|---
C|`struct AudioStream;`
Swift|*unimplemented*
#### Sound
Sound
Language|Symbol
---|---
C|`struct Sound;`
Swift|*unimplemented*
#### Music
Music, audio stream, anything longer than ~10 seconds should be streamed
Language|Symbol
---|---
C|`struct Music;`
Swift|*unimplemented*
#### VrDeviceInfo
VrDeviceInfo, Head-Mounted-Display device parameters
Language|Symbol
---|---
C|`struct VrDeviceInfo;`
Swift|*unimplemented*
#### VrStereoConfig
VrStereoConfig, VR stereo rendering configuration for simulator
Language|Symbol
---|---
C|`struct VrStereoConfig;`
Swift|*unimplemented*
#### FilePathList
File path list
Language|Symbol
---|---
C|`struct FilePathList;`
Swift|``DroppedPathCollection`` and ``DirectoryContents``
## Enumerators Definition
### System/Window config flags
```c
ConfigFlags FLAG_INTERLACED_HINT;          // Set to try enabling interlaced video format (for V3D)
ConfigFlags FLAG_MSAA_4X_HINT;             // Set to try enabling MSAA 4X
ConfigFlags FLAG_WINDOW_MOUSE_PASSTHROUGH; // Set to support mouse passthrough, only supported when FLAG_WINDOW_UNDECORATED
ConfigFlags FLAG_WINDOW_HIGHDPI;           // Set to support HighDPI
ConfigFlags FLAG_WINDOW_TRANSPARENT;       // Set to allow transparent framebuffer
ConfigFlags FLAG_WINDOW_ALWAYS_RUN;        // Set to allow windows running while minimized
ConfigFlags FLAG_WINDOW_TOPMOST;           // Set to window always on top
ConfigFlags FLAG_WINDOW_UNFOCUSED;         // Set to window non focused
ConfigFlags FLAG_WINDOW_MAXIMIZED;         // Set to maximize window (expanded to monitor)
ConfigFlags FLAG_WINDOW_MINIMIZED;         // Set to minimize window (iconify)
ConfigFlags FLAG_WINDOW_HIDDEN;            // Set to hide window
ConfigFlags FLAG_WINDOW_UNDECORATED;       // Set to disable window decoration (frame and buttons)
ConfigFlags FLAG_WINDOW_RESIZABLE;         // Set to allow resizable window
ConfigFlags FLAG_FULLSCREEN_MODE;          // Set to run program in fullscreen
ConfigFlags FLAG_VSYNC_HINT;               // Set to try enabling V-Sync on GPU
```
> Note: Every bit registers one state (use it with bit masks) default all flags are set to 0

#### FLAG_INTERLACED_HINT
Set to try enabling interlaced video format (for V3D)
Language|Symbol
---|---
C|`ConfigFlags FLAG_INTERLACED_HINT;`
Swift|``WindowFlags/interlaced``
#### FLAG_MSAA_4X_HINT
Set to try enabling MSAA 4X
Language|Symbol
---|---
C|`ConfigFlags FLAG_MSAA_4X_HINT;`
Swift|``WindowFlags/msaa4x``
#### FLAG_WINDOW_MOUSE_PASSTHROUGH
Set to support mouse passthrough, only supported when FLAG_WINDOW_UNDECORATED
Language|Symbol
---|---
C|`ConfigFlags FLAG_WINDOW_MOUSE_PASSTHROUGH;`
Swift|``WindowFlags/mousePassthrough``
#### FLAG_WINDOW_HIGHDPI
Set to support HighDPI
Language|Symbol
---|---
C|`ConfigFlags FLAG_WINDOW_HIGHDPI;`
Swift|``WindowFlags/highDPI``
#### FLAG_WINDOW_TRANSPARENT
Set to allow transparent framebuffer
Language|Symbol
---|---
C|`ConfigFlags FLAG_WINDOW_TRANSPARENT;`
Swift|``WindowFlags/transparent``
#### FLAG_WINDOW_ALWAYS_RUN
Set to allow windows running while minimized
Language|Symbol
---|---
C|`ConfigFlags FLAG_WINDOW_ALWAYS_RUN;`
Swift|``WindowFlags/runInBackground``
#### FLAG_WINDOW_TOPMOST
Set to window always on top
Language|Symbol
---|---
C|`ConfigFlags FLAG_WINDOW_TOPMOST;`
Swift|``WindowFlags/stayOnTop``
#### FLAG_WINDOW_UNFOCUSED
Set to window non focused
Language|Symbol
---|---
C|`ConfigFlags FLAG_WINDOW_UNFOCUSED;`
Swift|``WindowFlags/unfocused``
#### FLAG_WINDOW_MAXIMIZED
Set to maximize window (expanded to monitor)
Language|Symbol
---|---
C|`ConfigFlags FLAG_WINDOW_MAXIMIZED;`
Swift|``WindowFlags/maximized``, ``Window/isMaximized`` and ``Window/maximize()``
#### FLAG_WINDOW_MINIMIZED
Set to minimize window (iconify)
Language|Symbol
---|---
C|`ConfigFlags FLAG_WINDOW_MINIMIZED;`
Swift|``WindowFlags/minimized``, ``Window/isMinimized`` and ``Window/minimize()``
#### FLAG_WINDOW_HIDDEN
Set to hide window
Language|Symbol
---|---
C|`ConfigFlags FLAG_WINDOW_HIDDEN;`
Swift|``WindowFlags/hidden``
#### FLAG_WINDOW_UNDECORATED
Set to disable window decoration (frame and buttons)
Language|Symbol
---|---
C|`ConfigFlags FLAG_WINDOW_UNDECORATED;`
Swift|``WindowFlags/undecorated``
#### FLAG_WINDOW_RESIZABLE
Set to allow resizable window
Language|Symbol
---|---
C|`ConfigFlags FLAG_WINDOW_RESIZABLE;`
Swift|``WindowFlags/resizable``
#### FLAG_FULLSCREEN_MODE
Set to run program in fullscreen
Language|Symbol
---|---
C|`ConfigFlags FLAG_FULLSCREEN_MODE;`
Swift|``WindowFlags/fullscreen``
#### FLAG_VSYNC_HINT
Set to try enabling V-Sync on GPU
Language|Symbol
---|---
C|`ConfigFlags FLAG_VSYNC_HINT;`
Swift|``WindowFlags/vsync``
### Trace log level
```c
TraceLogLevel LOG_NONE;    // Disable logging
TraceLogLevel LOG_FATAL;   // Fatal logging, used to abort program: exit(EXIT_FAILURE)
TraceLogLevel LOG_ERROR;   // Error logging, used on unrecoverable failures
TraceLogLevel LOG_WARNING; // Warning logging, used on recoverable failures
TraceLogLevel LOG_INFO;    // Info logging, used for program execution info
TraceLogLevel LOG_DEBUG;   // Debug logging, used for internal debugging, it should be disabled on release builds
TraceLogLevel LOG_TRACE;   // Trace logging, intended for internal use only
TraceLogLevel LOG_ALL;     // Display all logs
```
> Note: Organized by priority level

#### LOG_NONE
Disable logging
Language|Symbol
---|---
C|`TraceLogLevel LOG_NONE;`
Swift|``TraceLevel/none``
#### LOG_FATAL
Fatal logging, used to abort program: exit(EXIT_FAILURE)
Language|Symbol
---|---
C|`TraceLogLevel LOG_FATAL;`
Swift|``TraceLevel/fatal``
#### LOG_ERROR
Error logging, used on unrecoverable failures
Language|Symbol
---|---
C|`TraceLogLevel LOG_ERROR;`
Swift|``TraceLevel/error``
#### LOG_WARNING
Warning logging, used on recoverable failures
Language|Symbol
---|---
C|`TraceLogLevel LOG_WARNING;`
Swift|``TraceLevel/warning``
#### LOG_INFO
Info logging, used for program execution info
Language|Symbol
---|---
C|`TraceLogLevel LOG_INFO;`
Swift|``TraceLevel/info``
#### LOG_DEBUG
Debug logging, used for internal debugging, it should be disabled on release builds
Language|Symbol
---|---
C|`TraceLogLevel LOG_DEBUG;`
Swift|``TraceLevel/debug``
#### LOG_TRACE
Trace logging, intended for internal use only
Language|Symbol
---|---
C|`TraceLogLevel LOG_TRACE;`
Swift|``TraceLevel/trace``
#### LOG_ALL
Display all logs
Language|Symbol
---|---
C|`TraceLogLevel LOG_ALL;`
Swift|``TraceLevel/all``
### Keyboard keys (US keyboard layout)
```c
KeyboardKey KEY_VOLUME_DOWN;   // Key: Android volume down button
KeyboardKey KEY_VOLUME_UP;     // Key: Android volume up button
KeyboardKey KEY_MENU;          // Key: Android menu button
KeyboardKey KEY_BACK;          // Key: Android back button
KeyboardKey KEY_KP_EQUAL;      // Key: Keypad =
KeyboardKey KEY_KP_ENTER;      // Key: Keypad Enter
KeyboardKey KEY_KP_ADD;        // Key: Keypad +
KeyboardKey KEY_KP_SUBTRACT;   // Key: Keypad -
KeyboardKey KEY_KP_MULTIPLY;   // Key: Keypad *
KeyboardKey KEY_KP_DIVIDE;     // Key: Keypad /
KeyboardKey KEY_KP_DECIMAL;    // Key: Keypad .
KeyboardKey KEY_KP_9;          // Key: Keypad 9
KeyboardKey KEY_KP_8;          // Key: Keypad 8
KeyboardKey KEY_KP_7;          // Key: Keypad 7
KeyboardKey KEY_KP_6;          // Key: Keypad 6
KeyboardKey KEY_KP_5;          // Key: Keypad 5
KeyboardKey KEY_KP_4;          // Key: Keypad 4
KeyboardKey KEY_KP_3;          // Key: Keypad 3
KeyboardKey KEY_KP_2;          // Key: Keypad 2
KeyboardKey KEY_KP_1;          // Key: Keypad 1
KeyboardKey KEY_KP_0;          // Key: Keypad 0
KeyboardKey KEY_KB_MENU;       // Key: KB menu
KeyboardKey KEY_RIGHT_SUPER;   // Key: Super right
KeyboardKey KEY_RIGHT_ALT;     // Key: Alt right
KeyboardKey KEY_RIGHT_CONTROL; // Key: Control right
KeyboardKey KEY_RIGHT_SHIFT;   // Key: Shift right
KeyboardKey KEY_LEFT_SUPER;    // Key: Super left
KeyboardKey KEY_LEFT_ALT;      // Key: Alt left
KeyboardKey KEY_LEFT_CONTROL;  // Key: Control left
KeyboardKey KEY_LEFT_SHIFT;    // Key: Shift left
KeyboardKey KEY_F12;           // Key: F12
KeyboardKey KEY_F11;           // Key: F11
KeyboardKey KEY_F10;           // Key: F10
KeyboardKey KEY_F9;            // Key: F9
KeyboardKey KEY_F8;            // Key: F8
KeyboardKey KEY_F7;            // Key: F7
KeyboardKey KEY_F6;            // Key: F6
KeyboardKey KEY_F5;            // Key: F5
KeyboardKey KEY_F4;            // Key: F4
KeyboardKey KEY_F3;            // Key: F3
KeyboardKey KEY_F2;            // Key: F2
KeyboardKey KEY_F1;            // Key: F1
KeyboardKey KEY_PAUSE;         // Key: Pause
KeyboardKey KEY_PRINT_SCREEN;  // Key: Print screen
KeyboardKey KEY_NUM_LOCK;      // Key: Num lock
KeyboardKey KEY_SCROLL_LOCK;   // Key: Scroll down
KeyboardKey KEY_CAPS_LOCK;     // Key: Caps lock
KeyboardKey KEY_END;           // Key: End
KeyboardKey KEY_HOME;          // Key: Home
KeyboardKey KEY_PAGE_DOWN;     // Key: Page down
KeyboardKey KEY_PAGE_UP;       // Key: Page up
KeyboardKey KEY_UP;            // Key: Cursor up
KeyboardKey KEY_DOWN;          // Key: Cursor down
KeyboardKey KEY_LEFT;          // Key: Cursor left
KeyboardKey KEY_RIGHT;         // Key: Cursor right
KeyboardKey KEY_DELETE;        // Key: Del
KeyboardKey KEY_INSERT;        // Key: Ins
KeyboardKey KEY_BACKSPACE;     // Key: Backspace
KeyboardKey KEY_TAB;           // Key: Tab
KeyboardKey KEY_ENTER;         // Key: Enter
KeyboardKey KEY_ESCAPE;        // Key: Esc
KeyboardKey KEY_SPACE;         // Key: Space
KeyboardKey KEY_GRAVE;         // Key: `
KeyboardKey KEY_RIGHT_BRACKET; // Key: ]
KeyboardKey KEY_BACKSLASH;     // Key: '\'
KeyboardKey KEY_LEFT_BRACKET;  // Key: [
KeyboardKey KEY_Z;             // Key: Z | z
KeyboardKey KEY_Y;             // Key: Y | y
KeyboardKey KEY_X;             // Key: X | x
KeyboardKey KEY_W;             // Key: W | w
KeyboardKey KEY_V;             // Key: V | v
KeyboardKey KEY_U;             // Key: U | u
KeyboardKey KEY_T;             // Key: T | t
KeyboardKey KEY_S;             // Key: S | s
KeyboardKey KEY_R;             // Key: R | r
KeyboardKey KEY_Q;             // Key: Q | q
KeyboardKey KEY_P;             // Key: P | p
KeyboardKey KEY_O;             // Key: O | o
KeyboardKey KEY_N;             // Key: N | n
KeyboardKey KEY_M;             // Key: M | m
KeyboardKey KEY_L;             // Key: L | l
KeyboardKey KEY_K;             // Key: K | k
KeyboardKey KEY_J;             // Key: J | j
KeyboardKey KEY_I;             // Key: I | i
KeyboardKey KEY_H;             // Key: H | h
KeyboardKey KEY_G;             // Key: G | g
KeyboardKey KEY_F;             // Key: F | f
KeyboardKey KEY_E;             // Key: E | e
KeyboardKey KEY_D;             // Key: D | d
KeyboardKey KEY_C;             // Key: C | c
KeyboardKey KEY_B;             // Key: B | b
KeyboardKey KEY_A;             // Key: A | a
KeyboardKey KEY_EQUAL;         // Key: =
KeyboardKey KEY_SEMICOLON;     // Key: ;
KeyboardKey KEY_NINE;          // Key: 9
KeyboardKey KEY_EIGHT;         // Key: 8
KeyboardKey KEY_SEVEN;         // Key: 7
KeyboardKey KEY_SIX;           // Key: 6
KeyboardKey KEY_FIVE;          // Key: 5
KeyboardKey KEY_FOUR;          // Key: 4
KeyboardKey KEY_THREE;         // Key: 3
KeyboardKey KEY_TWO;           // Key: 2
KeyboardKey KEY_ONE;           // Key: 1
KeyboardKey KEY_ZERO;          // Key: 0
KeyboardKey KEY_SLASH;         // Key: /
KeyboardKey KEY_PERIOD;        // Key: .
KeyboardKey KEY_MINUS;         // Key: -
KeyboardKey KEY_COMMA;         // Key: ,
KeyboardKey KEY_APOSTROPHE;    // Key: '
KeyboardKey KEY_NULL;          // Key: NULL, used for no key pressed
```
> Note: Use GetKeyPressed() to allow redefining keys for alternative layouts

#### KEY_VOLUME_DOWN
Key: Android volume down button
Language|Symbol
---|---
C|`KeyboardKey KEY_VOLUME_DOWN;`
Swift|``Keyboard/volumeDown``
#### KEY_VOLUME_UP
Key: Android volume up button
Language|Symbol
---|---
C|`KeyboardKey KEY_VOLUME_UP;`
Swift|``Keyboard/volumeUp``
#### KEY_MENU
Key: Android menu button
Language|Symbol
---|---
C|`KeyboardKey KEY_MENU;`
Swift|``Keyboard/menu``
#### KEY_BACK
Key: Android back button
Language|Symbol
---|---
C|`KeyboardKey KEY_BACK;`
Swift|``Keyboard/back``
#### KEY_KP_EQUAL
Key: Keypad =
Language|Symbol
---|---
C|`KeyboardKey KEY_KP_EQUAL;`
Swift|``Keyboard/keypadEqual``
#### KEY_KP_ENTER
Key: Keypad Enter
Language|Symbol
---|---
C|`KeyboardKey KEY_KP_ENTER;`
Swift|``Keyboard/keypadEnter``
#### KEY_KP_ADD
Key: Keypad +
Language|Symbol
---|---
C|`KeyboardKey KEY_KP_ADD;`
Swift|``Keyboard/add``
#### KEY_KP_SUBTRACT
Key: Keypad -
Language|Symbol
---|---
C|`KeyboardKey KEY_KP_SUBTRACT;`
Swift|``Keyboard/subtract``
#### KEY_KP_MULTIPLY
Key: Keypad *
Language|Symbol
---|---
C|`KeyboardKey KEY_KP_MULTIPLY;`
Swift|``Keyboard/multiply``
#### KEY_KP_DIVIDE
Key: Keypad /
Language|Symbol
---|---
C|`KeyboardKey KEY_KP_DIVIDE;`
Swift|``Keyboard/divide``
#### KEY_KP_DECIMAL
Key: Keypad .
Language|Symbol
---|---
C|`KeyboardKey KEY_KP_DECIMAL;`
Swift|``Keyboard/decimal``
#### KEY_KP_9
Key: Keypad 9
Language|Symbol
---|---
C|`KeyboardKey KEY_KP_9;`
Swift|``Keyboard/keypadNine``
#### KEY_KP_8
Key: Keypad 8
Language|Symbol
---|---
C|`KeyboardKey KEY_KP_8;`
Swift|``Keyboard/keypadEight``
#### KEY_KP_7
Key: Keypad 7
Language|Symbol
---|---
C|`KeyboardKey KEY_KP_7;`
Swift|``Keyboard/keypadSeven``
#### KEY_KP_6
Key: Keypad 6
Language|Symbol
---|---
C|`KeyboardKey KEY_KP_6;`
Swift|``Keyboard/keypadSix``
#### KEY_KP_5
Key: Keypad 5
Language|Symbol
---|---
C|`KeyboardKey KEY_KP_5;`
Swift|``Keyboard/keypadFive``
#### KEY_KP_4
Key: Keypad 4
Language|Symbol
---|---
C|`KeyboardKey KEY_KP_4;`
Swift|``Keyboard/keypadFour``
#### KEY_KP_3
Key: Keypad 3
Language|Symbol
---|---
C|`KeyboardKey KEY_KP_3;`
Swift|``Keyboard/keypadThree``
#### KEY_KP_2
Key: Keypad 2
Language|Symbol
---|---
C|`KeyboardKey KEY_KP_2;`
Swift|``Keyboard/keypadTwo``
#### KEY_KP_1
Key: Keypad 1
Language|Symbol
---|---
C|`KeyboardKey KEY_KP_1;`
Swift|``Keyboard/keypadOne``
#### KEY_KP_0
Key: Keypad 0
Language|Symbol
---|---
C|`KeyboardKey KEY_KP_0;`
Swift|``Keyboard/keypadZero``
#### KEY_KB_MENU
Key: KB menu
Language|Symbol
---|---
C|`KeyboardKey KEY_KB_MENU;`
Swift|``Keyboard/menu``
#### KEY_RIGHT_SUPER
Key: Super right
Language|Symbol
---|---
C|`KeyboardKey KEY_RIGHT_SUPER;`
Swift|``Keyboard/super``
#### KEY_RIGHT_ALT
Key: Alt right
Language|Symbol
---|---
C|`KeyboardKey KEY_RIGHT_ALT;`
Swift|``Keyboard/alt``
#### KEY_RIGHT_CONTROL
Key: Control right
Language|Symbol
---|---
C|`KeyboardKey KEY_RIGHT_CONTROL;`
Swift|``Keyboard/control``
#### KEY_RIGHT_SHIFT
Key: Shift right
Language|Symbol
---|---
C|`KeyboardKey KEY_RIGHT_SHIFT;`
Swift|``Keyboard/shift``
#### KEY_LEFT_SUPER
Key: Super left
Language|Symbol
---|---
C|`KeyboardKey KEY_LEFT_SUPER;`
Swift|``Keyboard/super``
#### KEY_LEFT_ALT
Key: Alt left
Language|Symbol
---|---
C|`KeyboardKey KEY_LEFT_ALT;`
Swift|``Keyboard/alt``
#### KEY_LEFT_CONTROL
Key: Control left
Language|Symbol
---|---
C|`KeyboardKey KEY_LEFT_CONTROL;`
Swift|``Keyboard/control``
#### KEY_LEFT_SHIFT
Key: Shift left
Language|Symbol
---|---
C|`KeyboardKey KEY_LEFT_SHIFT;`
Swift|``Keyboard/shift``
#### KEY_F12
Key: F12
Language|Symbol
---|---
C|`KeyboardKey KEY_F12;`
Swift|``Keyboard/f12``
#### KEY_F11
Key: F11
Language|Symbol
---|---
C|`KeyboardKey KEY_F11;`
Swift|``Keyboard/f11``
#### KEY_F10
Key: F10
Language|Symbol
---|---
C|`KeyboardKey KEY_F10;`
Swift|``Keyboard/f10``
#### KEY_F9
Key: F9
Language|Symbol
---|---
C|`KeyboardKey KEY_F9;`
Swift|``Keyboard/f9``
#### KEY_F8
Key: F8
Language|Symbol
---|---
C|`KeyboardKey KEY_F8;`
Swift|``Keyboard/f8``
#### KEY_F7
Key: F7
Language|Symbol
---|---
C|`KeyboardKey KEY_F7;`
Swift|``Keyboard/f7``
#### KEY_F6
Key: F6
Language|Symbol
---|---
C|`KeyboardKey KEY_F6;`
Swift|``Keyboard/f6``
#### KEY_F5
Key: F5
Language|Symbol
---|---
C|`KeyboardKey KEY_F5;`
Swift|``Keyboard/f5``
#### KEY_F4
Key: F4
Language|Symbol
---|---
C|`KeyboardKey KEY_F4;`
Swift|``Keyboard/f4``
#### KEY_F3
Key: F3
Language|Symbol
---|---
C|`KeyboardKey KEY_F3;`
Swift|``Keyboard/f3``
#### KEY_F2
Key: F2
Language|Symbol
---|---
C|`KeyboardKey KEY_F2;`
Swift|``Keyboard/f2``
#### KEY_F1
Key: F1
Language|Symbol
---|---
C|`KeyboardKey KEY_F1;`
Swift|``Keyboard/f1``
#### KEY_PAUSE
Key: Pause
Language|Symbol
---|---
C|`KeyboardKey KEY_PAUSE;`
Swift|``Keyboard/pause``
#### KEY_PRINT_SCREEN
Key: Print screen
Language|Symbol
---|---
C|`KeyboardKey KEY_PRINT_SCREEN;`
Swift|``Keyboard/printScreen``
#### KEY_NUM_LOCK
Key: Num lock
Language|Symbol
---|---
C|`KeyboardKey KEY_NUM_LOCK;`
Swift|``Keyboard/numLock``
#### KEY_SCROLL_LOCK
Key: Scroll down
Language|Symbol
---|---
C|`KeyboardKey KEY_SCROLL_LOCK;`
Swift|``Keyboard/scrollLock``
#### KEY_CAPS_LOCK
Key: Caps lock
Language|Symbol
---|---
C|`KeyboardKey KEY_CAPS_LOCK;`
Swift|``Keyboard/capsLock``
#### KEY_END
Key: End
Language|Symbol
---|---
C|`KeyboardKey KEY_END;`
Swift|``Keyboard/end``
#### KEY_HOME
Key: Home
Language|Symbol
---|---
C|`KeyboardKey KEY_HOME;`
Swift|``Keyboard/home``
#### KEY_PAGE_DOWN
Key: Page down
Language|Symbol
---|---
C|`KeyboardKey KEY_PAGE_DOWN;`
Swift|``Keyboard/pageDown``
#### KEY_PAGE_UP
Key: Page up
Language|Symbol
---|---
C|`KeyboardKey KEY_PAGE_UP;`
Swift|``Keyboard/pageUp``
#### KEY_UP
Key: Cursor up
Language|Symbol
---|---
C|`KeyboardKey KEY_UP;`
Swift|``Keyboard/up``
#### KEY_DOWN
Key: Cursor down
Language|Symbol
---|---
C|`KeyboardKey KEY_DOWN;`
Swift|``Keyboard/down``
#### KEY_LEFT
Key: Cursor left
Language|Symbol
---|---
C|`KeyboardKey KEY_LEFT;`
Swift|``Keyboard/left``
#### KEY_RIGHT
Key: Cursor right
Language|Symbol
---|---
C|`KeyboardKey KEY_RIGHT;`
Swift|``Keyboard/right``
#### KEY_DELETE
Key: Del
Language|Symbol
---|---
C|`KeyboardKey KEY_DELETE;`
Swift|``Keyboard/delete``
#### KEY_INSERT
Key: Ins
Language|Symbol
---|---
C|`KeyboardKey KEY_INSERT;`
Swift|``Keyboard/insert``
#### KEY_BACKSPACE
Key: Backspace
Language|Symbol
---|---
C|`KeyboardKey KEY_BACKSPACE;`
Swift|``Keyboard/backspace``
#### KEY_TAB
Key: Tab
Language|Symbol
---|---
C|`KeyboardKey KEY_TAB;`
Swift|``Keyboard/tab``
#### KEY_ENTER
Key: Enter
Language|Symbol
---|---
C|`KeyboardKey KEY_ENTER;`
Swift|``Keyboard/enter``
#### KEY_ESCAPE
Key: Esc
Language|Symbol
---|---
C|`KeyboardKey KEY_ESCAPE;`
Swift|``Keyboard/escape``
#### KEY_SPACE
Key: Space
Language|Symbol
---|---
C|`KeyboardKey KEY_SPACE;`
Swift|``Keyboard/space``
#### KEY_GRAVE
Key: `
Language|Symbol
---|---
C|`KeyboardKey KEY_GRAVE;`
Swift|``Keyboard/grave``
#### KEY_RIGHT_BRACKET
Key: ]
Language|Symbol
---|---
C|`KeyboardKey KEY_RIGHT_BRACKET;`
Swift|``Keyboard/rbracket``
#### KEY_BACKSLASH
Key: '\'
Language|Symbol
---|---
C|`KeyboardKey KEY_BACKSLASH;`
Swift|``Keyboard/backslash``
#### KEY_LEFT_BRACKET
Key: [
Language|Symbol
---|---
C|`KeyboardKey KEY_LEFT_BRACKET;`
Swift|``Keyboard/lbracket``
#### KEY_Z
Key: Z | z
Language|Symbol
---|---
C|`KeyboardKey KEY_Z;`
Swift|``Keyboard/z``
#### KEY_Y
Key: Y | y
Language|Symbol
---|---
C|`KeyboardKey KEY_Y;`
Swift|``Keyboard/y``
#### KEY_X
Key: X | x
Language|Symbol
---|---
C|`KeyboardKey KEY_X;`
Swift|``Keyboard/x``
#### KEY_W
Key: W | w
Language|Symbol
---|---
C|`KeyboardKey KEY_W;`
Swift|``Keyboard/w``
#### KEY_V
Key: V | v
Language|Symbol
---|---
C|`KeyboardKey KEY_V;`
Swift|``Keyboard/v``
#### KEY_U
Key: U | u
Language|Symbol
---|---
C|`KeyboardKey KEY_U;`
Swift|``Keyboard/u``
#### KEY_T
Key: T | t
Language|Symbol
---|---
C|`KeyboardKey KEY_T;`
Swift|``Keyboard/t``
#### KEY_S
Key: S | s
Language|Symbol
---|---
C|`KeyboardKey KEY_S;`
Swift|``Keyboard/s``
#### KEY_R
Key: R | r
Language|Symbol
---|---
C|`KeyboardKey KEY_R;`
Swift|``Keyboard/r``
#### KEY_Q
Key: Q | q
Language|Symbol
---|---
C|`KeyboardKey KEY_Q;`
Swift|``Keyboard/q``
#### KEY_P
Key: P | p
Language|Symbol
---|---
C|`KeyboardKey KEY_P;`
Swift|``Keyboard/p``
#### KEY_O
Key: O | o
Language|Symbol
---|---
C|`KeyboardKey KEY_O;`
Swift|``Keyboard/o``
#### KEY_N
Key: N | n
Language|Symbol
---|---
C|`KeyboardKey KEY_N;`
Swift|``Keyboard/n``
#### KEY_M
Key: M | m
Language|Symbol
---|---
C|`KeyboardKey KEY_M;`
Swift|``Keyboard/m``
#### KEY_L
Key: L | l
Language|Symbol
---|---
C|`KeyboardKey KEY_L;`
Swift|``Keyboard/l``
#### KEY_K
Key: K | k
Language|Symbol
---|---
C|`KeyboardKey KEY_K;`
Swift|``Keyboard/k``
#### KEY_J
Key: J | j
Language|Symbol
---|---
C|`KeyboardKey KEY_J;`
Swift|``Keyboard/j``
#### KEY_I
Key: I | i
Language|Symbol
---|---
C|`KeyboardKey KEY_I;`
Swift|``Keyboard/i``
#### KEY_H
Key: H | h
Language|Symbol
---|---
C|`KeyboardKey KEY_H;`
Swift|``Keyboard/h``
#### KEY_G
Key: G | g
Language|Symbol
---|---
C|`KeyboardKey KEY_G;`
Swift|``Keyboard/g``
#### KEY_F
Key: F | f
Language|Symbol
---|---
C|`KeyboardKey KEY_F;`
Swift|``Keyboard/f``
#### KEY_E
Key: E | e
Language|Symbol
---|---
C|`KeyboardKey KEY_E;`
Swift|``Keyboard/e``
#### KEY_D
Key: D | d
Language|Symbol
---|---
C|`KeyboardKey KEY_D;`
Swift|``Keyboard/d``
#### KEY_C
Key: C | c
Language|Symbol
---|---
C|`KeyboardKey KEY_C;`
Swift|``Keyboard/c``
#### KEY_B
Key: B | b
Language|Symbol
---|---
C|`KeyboardKey KEY_B;`
Swift|``Keyboard/b``
#### KEY_A
Key: A | a
Language|Symbol
---|---
C|`KeyboardKey KEY_A;`
Swift|``Keyboard/a``
#### KEY_EQUAL
Key: =
Language|Symbol
---|---
C|`KeyboardKey KEY_EQUAL;`
Swift|``Keyboard/equal``
#### KEY_SEMICOLON
Key: ;
Language|Symbol
---|---
C|`KeyboardKey KEY_SEMICOLON;`
Swift|``Keyboard/semicolon``
#### KEY_NINE
Key: 9
Language|Symbol
---|---
C|`KeyboardKey KEY_NINE;`
Swift|``Keyboard/nine``
#### KEY_EIGHT
Key: 8
Language|Symbol
---|---
C|`KeyboardKey KEY_EIGHT;`
Swift|``Keyboard/eight``
#### KEY_SEVEN
Key: 7
Language|Symbol
---|---
C|`KeyboardKey KEY_SEVEN;`
Swift|``Keyboard/seven``
#### KEY_SIX
Key: 6
Language|Symbol
---|---
C|`KeyboardKey KEY_SIX;`
Swift|``Keyboard/six``
#### KEY_FIVE
Key: 5
Language|Symbol
---|---
C|`KeyboardKey KEY_FIVE;`
Swift|``Keyboard/five``
#### KEY_FOUR
Key: 4
Language|Symbol
---|---
C|`KeyboardKey KEY_FOUR;`
Swift|``Keyboard/four``
#### KEY_THREE
Key: 3
Language|Symbol
---|---
C|`KeyboardKey KEY_THREE;`
Swift|``Keyboard/three``
#### KEY_TWO
Key: 2
Language|Symbol
---|---
C|`KeyboardKey KEY_TWO;`
Swift|``Keyboard/two``
#### KEY_ONE
Key: 1
Language|Symbol
---|---
C|`KeyboardKey KEY_ONE;`
Swift|``Keyboard/one``
#### KEY_ZERO
Key: 0
Language|Symbol
---|---
C|`KeyboardKey KEY_ZERO;`
Swift|``Keyboard/zero``
#### KEY_SLASH
Key: /
Language|Symbol
---|---
C|`KeyboardKey KEY_SLASH;`
Swift|``Keyboard/slash``
#### KEY_PERIOD
Key: .
Language|Symbol
---|---
C|`KeyboardKey KEY_PERIOD;`
Swift|``Keyboard/period``
#### KEY_MINUS
Key: -
Language|Symbol
---|---
C|`KeyboardKey KEY_MINUS;`
Swift|``Keyboard/minus``
#### KEY_COMMA
Key: ,
Language|Symbol
---|---
C|`KeyboardKey KEY_COMMA;`
Swift|``Keyboard/comma``
#### KEY_APOSTROPHE
Key: '
Language|Symbol
---|---
C|`KeyboardKey KEY_APOSTROPHE;`
Swift|``Keyboard/apostrophe``
#### KEY_NULL
Key: NULL, used for no key pressed
Language|Symbol
---|---
C|`KeyboardKey KEY_NULL;`
Swift|``KeyboardButton/null``
### Add backwards compatibility support for deprecated names
```c
#define MOUSE_LEFT_BUTTON   // Add backwards compatibility support for deprecated names
#define MOUSE_RIGHT_BUTTON
#define MOUSE_MIDDLE_BUTTON
```
#### MOUSE_LEFT_BUTTON
Add backwards compatibility support for deprecated names
Language|Symbol
---|---
C|`#define MOUSE_LEFT_BUTTON`
Swift|``Mouse/left``
#### MOUSE_RIGHT_BUTTON
This symbol has no documentation
Language|Symbol
---|---
C|`#define MOUSE_RIGHT_BUTTON`
Swift|``Mouse/right``
#### MOUSE_MIDDLE_BUTTON
This symbol has no documentation
Language|Symbol
---|---
C|`#define MOUSE_MIDDLE_BUTTON`
Swift|``Mouse/middle``
### Mouse buttons
```c
MouseButton MOUSE_BUTTON_BACK;    // Mouse button back (advanced mouse device)
MouseButton MOUSE_BUTTON_FORWARD; // Mouse button forward (advanced mouse device)
MouseButton MOUSE_BUTTON_EXTRA;   // Mouse button extra (advanced mouse device)
MouseButton MOUSE_BUTTON_SIDE;    // Mouse button side (advanced mouse device)
MouseButton MOUSE_BUTTON_MIDDLE;  // Mouse button middle (pressed wheel)
MouseButton MOUSE_BUTTON_RIGHT;   // Mouse button right
MouseButton MOUSE_BUTTON_LEFT;    // Mouse button left
```
#### MOUSE_BUTTON_BACK
Mouse button back (advanced mouse device)
Language|Symbol
---|---
C|`MouseButton MOUSE_BUTTON_BACK;`
Swift|``Mouse/backward``
#### MOUSE_BUTTON_FORWARD
Mouse button forward (advanced mouse device)
Language|Symbol
---|---
C|`MouseButton MOUSE_BUTTON_FORWARD;`
Swift|``Mouse/forward``
#### MOUSE_BUTTON_EXTRA
Mouse button extra (advanced mouse device)
Language|Symbol
---|---
C|`MouseButton MOUSE_BUTTON_EXTRA;`
Swift|``Mouse/extra``
#### MOUSE_BUTTON_SIDE
Mouse button side (advanced mouse device)
Language|Symbol
---|---
C|`MouseButton MOUSE_BUTTON_SIDE;`
Swift|``Mouse/side``
#### MOUSE_BUTTON_MIDDLE
Mouse button middle (pressed wheel)
Language|Symbol
---|---
C|`MouseButton MOUSE_BUTTON_MIDDLE;`
Swift|``Mouse/middle``
#### MOUSE_BUTTON_RIGHT
Mouse button right
Language|Symbol
---|---
C|`MouseButton MOUSE_BUTTON_RIGHT;`
Swift|``Mouse/right``
#### MOUSE_BUTTON_LEFT
Mouse button left
Language|Symbol
---|---
C|`MouseButton MOUSE_BUTTON_LEFT;`
Swift|``Mouse/left``
### Mouse cursor
```c
MouseCursor MOUSE_CURSOR_NOT_ALLOWED;   // The operation-not-allowed shape
MouseCursor MOUSE_CURSOR_RESIZE_ALL;    // The omnidirectional resize/move cursor shape
MouseCursor MOUSE_CURSOR_RESIZE_NESW;   // The top-right to bottom-left diagonal resize/move arrow shape
MouseCursor MOUSE_CURSOR_RESIZE_NWSE;   // Top-left to bottom-right diagonal resize/move arrow shape
MouseCursor MOUSE_CURSOR_RESIZE_NS;     // Vertical resize/move arrow shape
MouseCursor MOUSE_CURSOR_RESIZE_EW;     // Horizontal resize/move arrow shape
MouseCursor MOUSE_CURSOR_POINTING_HAND; // Pointing hand cursor
MouseCursor MOUSE_CURSOR_CROSSHAIR;     // Cross shape
MouseCursor MOUSE_CURSOR_IBEAM;         // Text writing cursor shape
MouseCursor MOUSE_CURSOR_ARROW;         // Arrow shape
MouseCursor MOUSE_CURSOR_DEFAULT;       // Default pointer shape
```
#### MOUSE_CURSOR_NOT_ALLOWED
The operation-not-allowed shape
Language|Symbol
---|---
C|`MouseCursor MOUSE_CURSOR_NOT_ALLOWED;`
Swift|``MouseCursor/forbidden``
#### MOUSE_CURSOR_RESIZE_ALL
The omnidirectional resize/move cursor shape
Language|Symbol
---|---
C|`MouseCursor MOUSE_CURSOR_RESIZE_ALL;`
Swift|``MouseCursor/resize``
#### MOUSE_CURSOR_RESIZE_NESW
The top-right to bottom-left diagonal resize/move arrow shape
Language|Symbol
---|---
C|`MouseCursor MOUSE_CURSOR_RESIZE_NESW;`
Swift|``MouseCursor/resizeNESW``
#### MOUSE_CURSOR_RESIZE_NWSE
Top-left to bottom-right diagonal resize/move arrow shape
Language|Symbol
---|---
C|`MouseCursor MOUSE_CURSOR_RESIZE_NWSE;`
Swift|``MouseCursor/resizeNWSE``
#### MOUSE_CURSOR_RESIZE_NS
Vertical resize/move arrow shape
Language|Symbol
---|---
C|`MouseCursor MOUSE_CURSOR_RESIZE_NS;`
Swift|``MouseCursor/resizeNS``
#### MOUSE_CURSOR_RESIZE_EW
Horizontal resize/move arrow shape
Language|Symbol
---|---
C|`MouseCursor MOUSE_CURSOR_RESIZE_EW;`
Swift|``MouseCursor/resizeEW``
#### MOUSE_CURSOR_POINTING_HAND
Pointing hand cursor
Language|Symbol
---|---
C|`MouseCursor MOUSE_CURSOR_POINTING_HAND;`
Swift|``MouseCursor/pointingHand``
#### MOUSE_CURSOR_CROSSHAIR
Cross shape
Language|Symbol
---|---
C|`MouseCursor MOUSE_CURSOR_CROSSHAIR;`
Swift|``MouseCursor/crosshair``
#### MOUSE_CURSOR_IBEAM
Text writing cursor shape
Language|Symbol
---|---
C|`MouseCursor MOUSE_CURSOR_IBEAM;`
Swift|``MouseCursor/text``
#### MOUSE_CURSOR_ARROW
Arrow shape
Language|Symbol
---|---
C|`MouseCursor MOUSE_CURSOR_ARROW;`
Swift|``MouseCursor/arrow``
#### MOUSE_CURSOR_DEFAULT
Default pointer shape
Language|Symbol
---|---
C|`MouseCursor MOUSE_CURSOR_DEFAULT;`
Swift|``MouseCursor/default``
### Gamepad buttons
```c
GamepadButton GAMEPAD_BUTTON_RIGHT_THUMB;      // Gamepad joystick pressed button right
GamepadButton GAMEPAD_BUTTON_LEFT_THUMB;       // Gamepad joystick pressed button left
GamepadButton GAMEPAD_BUTTON_MIDDLE_RIGHT;     // Gamepad center buttons, right one (i.e. PS3: Start)
GamepadButton GAMEPAD_BUTTON_MIDDLE;           // Gamepad center buttons, middle one (i.e. PS3: PS, Xbox: XBOX)
GamepadButton GAMEPAD_BUTTON_MIDDLE_LEFT;      // Gamepad center buttons, left one (i.e. PS3: Select)
GamepadButton GAMEPAD_BUTTON_RIGHT_TRIGGER_2;  // Gamepad top/back trigger right (second), it could be a trailing button
GamepadButton GAMEPAD_BUTTON_RIGHT_TRIGGER_1;  // Gamepad top/back trigger right (one), it could be a trailing button
GamepadButton GAMEPAD_BUTTON_LEFT_TRIGGER_2;   // Gamepad top/back trigger left (second), it could be a trailing button
GamepadButton GAMEPAD_BUTTON_LEFT_TRIGGER_1;   // Gamepad top/back trigger left (first), it could be a trailing button
GamepadButton GAMEPAD_BUTTON_RIGHT_FACE_LEFT;  // Gamepad right button left (i.e. PS3: Circle, Xbox: B)
GamepadButton GAMEPAD_BUTTON_RIGHT_FACE_DOWN;  // Gamepad right button down (i.e. PS3: Cross, Xbox: A)
GamepadButton GAMEPAD_BUTTON_RIGHT_FACE_RIGHT; // Gamepad right button right (i.e. PS3: Square, Xbox: X)
GamepadButton GAMEPAD_BUTTON_RIGHT_FACE_UP;    // Gamepad right button up (i.e. PS3: Triangle, Xbox: Y)
GamepadButton GAMEPAD_BUTTON_LEFT_FACE_LEFT;   // Gamepad left DPAD left button
GamepadButton GAMEPAD_BUTTON_LEFT_FACE_DOWN;   // Gamepad left DPAD down button
GamepadButton GAMEPAD_BUTTON_LEFT_FACE_RIGHT;  // Gamepad left DPAD right button
GamepadButton GAMEPAD_BUTTON_LEFT_FACE_UP;     // Gamepad left DPAD up button
GamepadButton GAMEPAD_BUTTON_UNKNOWN;          // Unknown button, just for error checking
```
#### GAMEPAD_BUTTON_RIGHT_THUMB
Gamepad joystick pressed button right
Language|Symbol
---|---
C|`GamepadButton GAMEPAD_BUTTON_RIGHT_THUMB;`
Swift|*unimplemented*
#### GAMEPAD_BUTTON_LEFT_THUMB
Gamepad joystick pressed button left
Language|Symbol
---|---
C|`GamepadButton GAMEPAD_BUTTON_LEFT_THUMB;`
Swift|*unimplemented*
#### GAMEPAD_BUTTON_MIDDLE_RIGHT
Gamepad center buttons, right one (i.e. PS3: Start)
Language|Symbol
---|---
C|`GamepadButton GAMEPAD_BUTTON_MIDDLE_RIGHT;`
Swift|*unimplemented*
#### GAMEPAD_BUTTON_MIDDLE
Gamepad center buttons, middle one (i.e. PS3: PS, Xbox: XBOX)
Language|Symbol
---|---
C|`GamepadButton GAMEPAD_BUTTON_MIDDLE;`
Swift|*unimplemented*
#### GAMEPAD_BUTTON_MIDDLE_LEFT
Gamepad center buttons, left one (i.e. PS3: Select)
Language|Symbol
---|---
C|`GamepadButton GAMEPAD_BUTTON_MIDDLE_LEFT;`
Swift|*unimplemented*
#### GAMEPAD_BUTTON_RIGHT_TRIGGER_2
Gamepad top/back trigger right (second), it could be a trailing button
Language|Symbol
---|---
C|`GamepadButton GAMEPAD_BUTTON_RIGHT_TRIGGER_2;`
Swift|*unimplemented*
#### GAMEPAD_BUTTON_RIGHT_TRIGGER_1
Gamepad top/back trigger right (one), it could be a trailing button
Language|Symbol
---|---
C|`GamepadButton GAMEPAD_BUTTON_RIGHT_TRIGGER_1;`
Swift|*unimplemented*
#### GAMEPAD_BUTTON_LEFT_TRIGGER_2
Gamepad top/back trigger left (second), it could be a trailing button
Language|Symbol
---|---
C|`GamepadButton GAMEPAD_BUTTON_LEFT_TRIGGER_2;`
Swift|*unimplemented*
#### GAMEPAD_BUTTON_LEFT_TRIGGER_1
Gamepad top/back trigger left (first), it could be a trailing button
Language|Symbol
---|---
C|`GamepadButton GAMEPAD_BUTTON_LEFT_TRIGGER_1;`
Swift|*unimplemented*
#### GAMEPAD_BUTTON_RIGHT_FACE_LEFT
Gamepad right button left (i.e. PS3: Circle, Xbox: B)
Language|Symbol
---|---
C|`GamepadButton GAMEPAD_BUTTON_RIGHT_FACE_LEFT;`
Swift|*unimplemented*
#### GAMEPAD_BUTTON_RIGHT_FACE_DOWN
Gamepad right button down (i.e. PS3: Cross, Xbox: A)
Language|Symbol
---|---
C|`GamepadButton GAMEPAD_BUTTON_RIGHT_FACE_DOWN;`
Swift|*unimplemented*
#### GAMEPAD_BUTTON_RIGHT_FACE_RIGHT
Gamepad right button right (i.e. PS3: Square, Xbox: X)
Language|Symbol
---|---
C|`GamepadButton GAMEPAD_BUTTON_RIGHT_FACE_RIGHT;`
Swift|*unimplemented*
#### GAMEPAD_BUTTON_RIGHT_FACE_UP
Gamepad right button up (i.e. PS3: Triangle, Xbox: Y)
Language|Symbol
---|---
C|`GamepadButton GAMEPAD_BUTTON_RIGHT_FACE_UP;`
Swift|*unimplemented*
#### GAMEPAD_BUTTON_LEFT_FACE_LEFT
Gamepad left DPAD left button
Language|Symbol
---|---
C|`GamepadButton GAMEPAD_BUTTON_LEFT_FACE_LEFT;`
Swift|*unimplemented*
#### GAMEPAD_BUTTON_LEFT_FACE_DOWN
Gamepad left DPAD down button
Language|Symbol
---|---
C|`GamepadButton GAMEPAD_BUTTON_LEFT_FACE_DOWN;`
Swift|*unimplemented*
#### GAMEPAD_BUTTON_LEFT_FACE_RIGHT
Gamepad left DPAD right button
Language|Symbol
---|---
C|`GamepadButton GAMEPAD_BUTTON_LEFT_FACE_RIGHT;`
Swift|*unimplemented*
#### GAMEPAD_BUTTON_LEFT_FACE_UP
Gamepad left DPAD up button
Language|Symbol
---|---
C|`GamepadButton GAMEPAD_BUTTON_LEFT_FACE_UP;`
Swift|*unimplemented*
#### GAMEPAD_BUTTON_UNKNOWN
Unknown button, just for error checking
Language|Symbol
---|---
C|`GamepadButton GAMEPAD_BUTTON_UNKNOWN;`
Swift|*unimplemented*
### Gamepad axis
```c
GamepadAxis GAMEPAD_AXIS_RIGHT_TRIGGER; // Gamepad back trigger right, pressure level: [1..-1]
GamepadAxis GAMEPAD_AXIS_LEFT_TRIGGER;  // Gamepad back trigger left, pressure level: [1..-1]
GamepadAxis GAMEPAD_AXIS_RIGHT_Y;       // Gamepad right stick Y axis
GamepadAxis GAMEPAD_AXIS_RIGHT_X;       // Gamepad right stick X axis
GamepadAxis GAMEPAD_AXIS_LEFT_Y;        // Gamepad left stick Y axis
GamepadAxis GAMEPAD_AXIS_LEFT_X;        // Gamepad left stick X axis
```
#### GAMEPAD_AXIS_RIGHT_TRIGGER
Gamepad back trigger right, pressure level: [1..-1]
Language|Symbol
---|---
C|`GamepadAxis GAMEPAD_AXIS_RIGHT_TRIGGER;`
Swift|*unimplemented*
#### GAMEPAD_AXIS_LEFT_TRIGGER
Gamepad back trigger left, pressure level: [1..-1]
Language|Symbol
---|---
C|`GamepadAxis GAMEPAD_AXIS_LEFT_TRIGGER;`
Swift|*unimplemented*
#### GAMEPAD_AXIS_RIGHT_Y
Gamepad right stick Y axis
Language|Symbol
---|---
C|`GamepadAxis GAMEPAD_AXIS_RIGHT_Y;`
Swift|*unimplemented*
#### GAMEPAD_AXIS_RIGHT_X
Gamepad right stick X axis
Language|Symbol
---|---
C|`GamepadAxis GAMEPAD_AXIS_RIGHT_X;`
Swift|*unimplemented*
#### GAMEPAD_AXIS_LEFT_Y
Gamepad left stick Y axis
Language|Symbol
---|---
C|`GamepadAxis GAMEPAD_AXIS_LEFT_Y;`
Swift|*unimplemented*
#### GAMEPAD_AXIS_LEFT_X
Gamepad left stick X axis
Language|Symbol
---|---
C|`GamepadAxis GAMEPAD_AXIS_LEFT_X;`
Swift|*unimplemented*
### Material map index
```c
MaterialMapIndex MATERIAL_MAP_BRDF;       // Brdf material
MaterialMapIndex MATERIAL_MAP_PREFILTER;  // Prefilter material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
MaterialMapIndex MATERIAL_MAP_IRRADIANCE; // Irradiance material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
MaterialMapIndex MATERIAL_MAP_CUBEMAP;    // Cubemap material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
MaterialMapIndex MATERIAL_MAP_HEIGHT;     // Heightmap material
MaterialMapIndex MATERIAL_MAP_EMISSION;   // Emission material
MaterialMapIndex MATERIAL_MAP_OCCLUSION;  // Ambient occlusion material
MaterialMapIndex MATERIAL_MAP_ROUGHNESS;  // Roughness material
MaterialMapIndex MATERIAL_MAP_NORMAL;     // Normal material
MaterialMapIndex MATERIAL_MAP_METALNESS;  // Metalness material (same as: MATERIAL_MAP_SPECULAR)
MaterialMapIndex MATERIAL_MAP_ALBEDO;     // Albedo material (same as: MATERIAL_MAP_DIFFUSE)
#define MATERIAL_MAP_DIFFUSE
#define MATERIAL_MAP_SPECULAR
```
#### MATERIAL_MAP_BRDF
Brdf material
Language|Symbol
---|---
C|`MaterialMapIndex MATERIAL_MAP_BRDF;`
Swift|*unimplemented*
#### MATERIAL_MAP_PREFILTER
Prefilter material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
Language|Symbol
---|---
C|`MaterialMapIndex MATERIAL_MAP_PREFILTER;`
Swift|*unimplemented*
#### MATERIAL_MAP_IRRADIANCE
Irradiance material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
Language|Symbol
---|---
C|`MaterialMapIndex MATERIAL_MAP_IRRADIANCE;`
Swift|*unimplemented*
#### MATERIAL_MAP_CUBEMAP
Cubemap material (NOTE: Uses GL_TEXTURE_CUBE_MAP)
Language|Symbol
---|---
C|`MaterialMapIndex MATERIAL_MAP_CUBEMAP;`
Swift|*unimplemented*
#### MATERIAL_MAP_HEIGHT
Heightmap material
Language|Symbol
---|---
C|`MaterialMapIndex MATERIAL_MAP_HEIGHT;`
Swift|*unimplemented*
#### MATERIAL_MAP_EMISSION
Emission material
Language|Symbol
---|---
C|`MaterialMapIndex MATERIAL_MAP_EMISSION;`
Swift|*unimplemented*
#### MATERIAL_MAP_OCCLUSION
Ambient occlusion material
Language|Symbol
---|---
C|`MaterialMapIndex MATERIAL_MAP_OCCLUSION;`
Swift|*unimplemented*
#### MATERIAL_MAP_ROUGHNESS
Roughness material
Language|Symbol
---|---
C|`MaterialMapIndex MATERIAL_MAP_ROUGHNESS;`
Swift|*unimplemented*
#### MATERIAL_MAP_NORMAL
Normal material
Language|Symbol
---|---
C|`MaterialMapIndex MATERIAL_MAP_NORMAL;`
Swift|*unimplemented*
#### MATERIAL_MAP_METALNESS
Metalness material (same as: MATERIAL_MAP_SPECULAR)
Language|Symbol
---|---
C|`MaterialMapIndex MATERIAL_MAP_METALNESS;`
Swift|*unimplemented*
#### MATERIAL_MAP_ALBEDO
Albedo material (same as: MATERIAL_MAP_DIFFUSE)
Language|Symbol
---|---
C|`MaterialMapIndex MATERIAL_MAP_ALBEDO;`
Swift|*unimplemented*
#### MATERIAL_MAP_DIFFUSE
This symbol has no documentation
Language|Symbol
---|---
C|`#define MATERIAL_MAP_DIFFUSE`
Swift|*unimplemented*
#### MATERIAL_MAP_SPECULAR
This symbol has no documentation
Language|Symbol
---|---
C|`#define MATERIAL_MAP_SPECULAR`
Swift|*unimplemented*
### Shader location index
```c
ShaderLocationIndex SHADER_LOC_MAP_BRDF;          // Shader location: sampler2d texture: brdf
ShaderLocationIndex SHADER_LOC_MAP_PREFILTER;     // Shader location: samplerCube texture: prefilter
ShaderLocationIndex SHADER_LOC_MAP_IRRADIANCE;    // Shader location: samplerCube texture: irradiance
ShaderLocationIndex SHADER_LOC_MAP_CUBEMAP;       // Shader location: samplerCube texture: cubemap
ShaderLocationIndex SHADER_LOC_MAP_HEIGHT;        // Shader location: sampler2d texture: height
ShaderLocationIndex SHADER_LOC_MAP_EMISSION;      // Shader location: sampler2d texture: emission
ShaderLocationIndex SHADER_LOC_MAP_OCCLUSION;     // Shader location: sampler2d texture: occlusion
ShaderLocationIndex SHADER_LOC_MAP_ROUGHNESS;     // Shader location: sampler2d texture: roughness
ShaderLocationIndex SHADER_LOC_MAP_NORMAL;        // Shader location: sampler2d texture: normal
ShaderLocationIndex SHADER_LOC_MAP_METALNESS;     // Shader location: sampler2d texture: metalness (same as: SHADER_LOC_MAP_SPECULAR)
ShaderLocationIndex SHADER_LOC_MAP_ALBEDO;        // Shader location: sampler2d texture: albedo (same as: SHADER_LOC_MAP_DIFFUSE)
ShaderLocationIndex SHADER_LOC_COLOR_AMBIENT;     // Shader location: vector uniform: ambient color
ShaderLocationIndex SHADER_LOC_COLOR_SPECULAR;    // Shader location: vector uniform: specular color
ShaderLocationIndex SHADER_LOC_COLOR_DIFFUSE;     // Shader location: vector uniform: diffuse color
ShaderLocationIndex SHADER_LOC_VECTOR_VIEW;       // Shader location: vector uniform: view
ShaderLocationIndex SHADER_LOC_MATRIX_NORMAL;     // Shader location: matrix uniform: normal
ShaderLocationIndex SHADER_LOC_MATRIX_MODEL;      // Shader location: matrix uniform: model (transform)
ShaderLocationIndex SHADER_LOC_MATRIX_PROJECTION; // Shader location: matrix uniform: projection
ShaderLocationIndex SHADER_LOC_MATRIX_VIEW;       // Shader location: matrix uniform: view (camera transform)
ShaderLocationIndex SHADER_LOC_MATRIX_MVP;        // Shader location: matrix uniform: model-view-projection
ShaderLocationIndex SHADER_LOC_VERTEX_COLOR;      // Shader location: vertex attribute: color
ShaderLocationIndex SHADER_LOC_VERTEX_TANGENT;    // Shader location: vertex attribute: tangent
ShaderLocationIndex SHADER_LOC_VERTEX_NORMAL;     // Shader location: vertex attribute: normal
ShaderLocationIndex SHADER_LOC_VERTEX_TEXCOORD02; // Shader location: vertex attribute: texcoord02
ShaderLocationIndex SHADER_LOC_VERTEX_TEXCOORD01; // Shader location: vertex attribute: texcoord01
ShaderLocationIndex SHADER_LOC_VERTEX_POSITION;   // Shader location: vertex attribute: position
#define SHADER_LOC_MAP_DIFFUSE
#define SHADER_LOC_MAP_SPECULAR
```
#### SHADER_LOC_MAP_BRDF
Shader location: sampler2d texture: brdf
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_MAP_BRDF;`
Swift|*unimplemented*
#### SHADER_LOC_MAP_PREFILTER
Shader location: samplerCube texture: prefilter
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_MAP_PREFILTER;`
Swift|*unimplemented*
#### SHADER_LOC_MAP_IRRADIANCE
Shader location: samplerCube texture: irradiance
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_MAP_IRRADIANCE;`
Swift|*unimplemented*
#### SHADER_LOC_MAP_CUBEMAP
Shader location: samplerCube texture: cubemap
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_MAP_CUBEMAP;`
Swift|*unimplemented*
#### SHADER_LOC_MAP_HEIGHT
Shader location: sampler2d texture: height
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_MAP_HEIGHT;`
Swift|*unimplemented*
#### SHADER_LOC_MAP_EMISSION
Shader location: sampler2d texture: emission
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_MAP_EMISSION;`
Swift|*unimplemented*
#### SHADER_LOC_MAP_OCCLUSION
Shader location: sampler2d texture: occlusion
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_MAP_OCCLUSION;`
Swift|*unimplemented*
#### SHADER_LOC_MAP_ROUGHNESS
Shader location: sampler2d texture: roughness
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_MAP_ROUGHNESS;`
Swift|*unimplemented*
#### SHADER_LOC_MAP_NORMAL
Shader location: sampler2d texture: normal
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_MAP_NORMAL;`
Swift|*unimplemented*
#### SHADER_LOC_MAP_METALNESS
Shader location: sampler2d texture: metalness (same as: SHADER_LOC_MAP_SPECULAR)
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_MAP_METALNESS;`
Swift|*unimplemented*
#### SHADER_LOC_MAP_ALBEDO
Shader location: sampler2d texture: albedo (same as: SHADER_LOC_MAP_DIFFUSE)
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_MAP_ALBEDO;`
Swift|*unimplemented*
#### SHADER_LOC_COLOR_AMBIENT
Shader location: vector uniform: ambient color
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_COLOR_AMBIENT;`
Swift|*unimplemented*
#### SHADER_LOC_COLOR_SPECULAR
Shader location: vector uniform: specular color
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_COLOR_SPECULAR;`
Swift|*unimplemented*
#### SHADER_LOC_COLOR_DIFFUSE
Shader location: vector uniform: diffuse color
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_COLOR_DIFFUSE;`
Swift|*unimplemented*
#### SHADER_LOC_VECTOR_VIEW
Shader location: vector uniform: view
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_VECTOR_VIEW;`
Swift|*unimplemented*
#### SHADER_LOC_MATRIX_NORMAL
Shader location: matrix uniform: normal
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_MATRIX_NORMAL;`
Swift|*unimplemented*
#### SHADER_LOC_MATRIX_MODEL
Shader location: matrix uniform: model (transform)
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_MATRIX_MODEL;`
Swift|*unimplemented*
#### SHADER_LOC_MATRIX_PROJECTION
Shader location: matrix uniform: projection
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_MATRIX_PROJECTION;`
Swift|*unimplemented*
#### SHADER_LOC_MATRIX_VIEW
Shader location: matrix uniform: view (camera transform)
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_MATRIX_VIEW;`
Swift|*unimplemented*
#### SHADER_LOC_MATRIX_MVP
Shader location: matrix uniform: model-view-projection
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_MATRIX_MVP;`
Swift|*unimplemented*
#### SHADER_LOC_VERTEX_COLOR
Shader location: vertex attribute: color
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_VERTEX_COLOR;`
Swift|*unimplemented*
#### SHADER_LOC_VERTEX_TANGENT
Shader location: vertex attribute: tangent
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_VERTEX_TANGENT;`
Swift|*unimplemented*
#### SHADER_LOC_VERTEX_NORMAL
Shader location: vertex attribute: normal
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_VERTEX_NORMAL;`
Swift|``BuiltinUniform/normal``
#### SHADER_LOC_VERTEX_TEXCOORD02
Shader location: vertex attribute: texcoord02
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_VERTEX_TEXCOORD02;`
Swift|*unimplemented*
#### SHADER_LOC_VERTEX_TEXCOORD01
Shader location: vertex attribute: texcoord01
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_VERTEX_TEXCOORD01;`
Swift|*unimplemented*
#### SHADER_LOC_VERTEX_POSITION
Shader location: vertex attribute: position
Language|Symbol
---|---
C|`ShaderLocationIndex SHADER_LOC_VERTEX_POSITION;`
Swift|``BuiltinUniform/position``
#### SHADER_LOC_MAP_DIFFUSE
This symbol has no documentation
Language|Symbol
---|---
C|`#define SHADER_LOC_MAP_DIFFUSE`
Swift|*unimplemented*
#### SHADER_LOC_MAP_SPECULAR
This symbol has no documentation
Language|Symbol
---|---
C|`#define SHADER_LOC_MAP_SPECULAR`
Swift|*unimplemented*
### Shader uniform data type
```c
ShaderUniformDataType SHADER_UNIFORM_SAMPLER2D; // Shader uniform type: sampler2d
ShaderUniformDataType SHADER_UNIFORM_IVEC4;     // Shader uniform type: ivec4 (4 int)
ShaderUniformDataType SHADER_UNIFORM_IVEC3;     // Shader uniform type: ivec3 (3 int)
ShaderUniformDataType SHADER_UNIFORM_IVEC2;     // Shader uniform type: ivec2 (2 int)
ShaderUniformDataType SHADER_UNIFORM_INT;       // Shader uniform type: int
ShaderUniformDataType SHADER_UNIFORM_VEC4;      // Shader uniform type: vec4 (4 float)
ShaderUniformDataType SHADER_UNIFORM_VEC3;      // Shader uniform type: vec3 (3 float)
ShaderUniformDataType SHADER_UNIFORM_VEC2;      // Shader uniform type: vec2 (2 float)
ShaderUniformDataType SHADER_UNIFORM_FLOAT;     // Shader uniform type: float
```
#### SHADER_UNIFORM_SAMPLER2D
Shader uniform type: sampler2d
Language|Symbol
---|---
C|`ShaderUniformDataType SHADER_UNIFORM_SAMPLER2D;`
Swift|*unimplemented*
#### SHADER_UNIFORM_IVEC4
Shader uniform type: ivec4 (4 int)
Language|Symbol
---|---
C|`ShaderUniformDataType SHADER_UNIFORM_IVEC4;`
Swift|
#### SHADER_UNIFORM_IVEC3
Shader uniform type: ivec3 (3 int)
Language|Symbol
---|---
C|`ShaderUniformDataType SHADER_UNIFORM_IVEC3;`
Swift|
#### SHADER_UNIFORM_IVEC2
Shader uniform type: ivec2 (2 int)
Language|Symbol
---|---
C|`ShaderUniformDataType SHADER_UNIFORM_IVEC2;`
Swift|
#### SHADER_UNIFORM_INT
Shader uniform type: int
Language|Symbol
---|---
C|`ShaderUniformDataType SHADER_UNIFORM_INT;`
Swift|
#### SHADER_UNIFORM_VEC4
Shader uniform type: vec4 (4 float)
Language|Symbol
---|---
C|`ShaderUniformDataType SHADER_UNIFORM_VEC4;`
Swift|
#### SHADER_UNIFORM_VEC3
Shader uniform type: vec3 (3 float)
Language|Symbol
---|---
C|`ShaderUniformDataType SHADER_UNIFORM_VEC3;`
Swift|
#### SHADER_UNIFORM_VEC2
Shader uniform type: vec2 (2 float)
Language|Symbol
---|---
C|`ShaderUniformDataType SHADER_UNIFORM_VEC2;`
Swift|
#### SHADER_UNIFORM_FLOAT
Shader uniform type: float
Language|Symbol
---|---
C|`ShaderUniformDataType SHADER_UNIFORM_FLOAT;`
Swift|
### Shader attribute data types
```c
ShaderAttributeDataType SHADER_ATTRIB_VEC4;  // Shader attribute type: vec4 (4 float)
ShaderAttributeDataType SHADER_ATTRIB_VEC3;  // Shader attribute type: vec3 (3 float)
ShaderAttributeDataType SHADER_ATTRIB_VEC2;  // Shader attribute type: vec2 (2 float)
ShaderAttributeDataType SHADER_ATTRIB_FLOAT; // Shader attribute type: float
```
#### SHADER_ATTRIB_VEC4
Shader attribute type: vec4 (4 float)
Language|Symbol
---|---
C|`ShaderAttributeDataType SHADER_ATTRIB_VEC4;`
Swift|*unimplemented*
#### SHADER_ATTRIB_VEC3
Shader attribute type: vec3 (3 float)
Language|Symbol
---|---
C|`ShaderAttributeDataType SHADER_ATTRIB_VEC3;`
Swift|*unimplemented*
#### SHADER_ATTRIB_VEC2
Shader attribute type: vec2 (2 float)
Language|Symbol
---|---
C|`ShaderAttributeDataType SHADER_ATTRIB_VEC2;`
Swift|*unimplemented*
#### SHADER_ATTRIB_FLOAT
Shader attribute type: float
Language|Symbol
---|---
C|`ShaderAttributeDataType SHADER_ATTRIB_FLOAT;`
Swift|*unimplemented*
### Pixel formats
```c
PixelFormat PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA;  // 2 bpp
PixelFormat PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA;  // 8 bpp
PixelFormat PIXELFORMAT_COMPRESSED_PVRT_RGBA;      // 4 bpp
PixelFormat PIXELFORMAT_COMPRESSED_PVRT_RGB;       // 4 bpp
PixelFormat PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA;  // 8 bpp
PixelFormat PIXELFORMAT_COMPRESSED_ETC2_RGB;       // 4 bpp
PixelFormat PIXELFORMAT_COMPRESSED_ETC1_RGB;       // 4 bpp
PixelFormat PIXELFORMAT_COMPRESSED_DXT5_RGBA;      // 8 bpp
PixelFormat PIXELFORMAT_COMPRESSED_DXT3_RGBA;      // 8 bpp
PixelFormat PIXELFORMAT_COMPRESSED_DXT1_RGBA;      // 4 bpp (1 bit alpha)
PixelFormat PIXELFORMAT_COMPRESSED_DXT1_RGB;       // 4 bpp (no alpha)
PixelFormat PIXELFORMAT_UNCOMPRESSED_R32G32B32A32; // 32*4 bpp (4 channels - float)
PixelFormat PIXELFORMAT_UNCOMPRESSED_R32G32B32;    // 32*3 bpp (3 channels - float)
PixelFormat PIXELFORMAT_UNCOMPRESSED_R32;          // 32 bpp (1 channel - float)
PixelFormat PIXELFORMAT_UNCOMPRESSED_R8G8B8A8;     // 32 bpp
PixelFormat PIXELFORMAT_UNCOMPRESSED_R4G4B4A4;     // 16 bpp (4 bit alpha)
PixelFormat PIXELFORMAT_UNCOMPRESSED_R5G5B5A1;     // 16 bpp (1 bit alpha)
PixelFormat PIXELFORMAT_UNCOMPRESSED_R8G8B8;       // 24 bpp
PixelFormat PIXELFORMAT_UNCOMPRESSED_R5G6B5;       // 16 bpp
PixelFormat PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA;   // 8*2 bpp (2 channels)
PixelFormat PIXELFORMAT_UNCOMPRESSED_GRAYSCALE;    // 8 bit per pixel (no alpha)
```
> Note: Support depends on OpenGL version and platform

#### PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA
2 bpp
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA;`
Swift|``PixelFormat/astc8``
#### PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA
8 bpp
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA;`
Swift|``PixelFormat/astc4``
#### PIXELFORMAT_COMPRESSED_PVRT_RGBA
4 bpp
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_COMPRESSED_PVRT_RGBA;`
Swift|``PixelFormat/pvrtWithAlpha``
#### PIXELFORMAT_COMPRESSED_PVRT_RGB
4 bpp
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_COMPRESSED_PVRT_RGB;`
Swift|``PixelFormat/pvrt``
#### PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA
8 bpp
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA;`
Swift|``PixelFormat/etc2WithAlpha``
#### PIXELFORMAT_COMPRESSED_ETC2_RGB
4 bpp
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_COMPRESSED_ETC2_RGB;`
Swift|``PixelFormat/etc2``
#### PIXELFORMAT_COMPRESSED_ETC1_RGB
4 bpp
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_COMPRESSED_ETC1_RGB;`
Swift|``PixelFormat/etc1``
#### PIXELFORMAT_COMPRESSED_DXT5_RGBA
8 bpp
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_COMPRESSED_DXT5_RGBA;`
Swift|``PixelFormat/dxt5WithAlpha``
#### PIXELFORMAT_COMPRESSED_DXT3_RGBA
8 bpp
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_COMPRESSED_DXT3_RGBA;`
Swift|``PixelFormat/dxt3WithAlpha``
#### PIXELFORMAT_COMPRESSED_DXT1_RGBA
4 bpp (1 bit alpha)
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_COMPRESSED_DXT1_RGBA;`
Swift|``PixelFormat/dxt1WithAlpha``
#### PIXELFORMAT_COMPRESSED_DXT1_RGB
4 bpp (no alpha)
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_COMPRESSED_DXT1_RGB;`
Swift|``PixelFormat/dxt1``
#### PIXELFORMAT_UNCOMPRESSED_R32G32B32A32
32*4 bpp (4 channels - float)
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_UNCOMPRESSED_R32G32B32A32;`
Swift|``PixelFormat/rgba32f``
#### PIXELFORMAT_UNCOMPRESSED_R32G32B32
32*3 bpp (3 channels - float)
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_UNCOMPRESSED_R32G32B32;`
Swift|``PixelFormat/rgb32f``
#### PIXELFORMAT_UNCOMPRESSED_R32
32 bpp (1 channel - float)
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_UNCOMPRESSED_R32;`
Swift|``PixelFormat/r32f``
#### PIXELFORMAT_UNCOMPRESSED_R8G8B8A8
32 bpp
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_UNCOMPRESSED_R8G8B8A8;`
Swift|``PixelFormat/rgba8``
#### PIXELFORMAT_UNCOMPRESSED_R4G4B4A4
16 bpp (4 bit alpha)
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_UNCOMPRESSED_R4G4B4A4;`
Swift|``PixelFormat/rgba4``
#### PIXELFORMAT_UNCOMPRESSED_R5G5B5A1
16 bpp (1 bit alpha)
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_UNCOMPRESSED_R5G5B5A1;`
Swift|``PixelFormat/rgb5a1``
#### PIXELFORMAT_UNCOMPRESSED_R8G8B8
24 bpp
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_UNCOMPRESSED_R8G8B8;`
Swift|``PixelFormat/rgb8``
#### PIXELFORMAT_UNCOMPRESSED_R5G6B5
16 bpp
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_UNCOMPRESSED_R5G6B5;`
Swift|``PixelFormat/r5g6b5``
#### PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA
8*2 bpp (2 channels)
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA;`
Swift|``PixelFormat/wa8``
#### PIXELFORMAT_UNCOMPRESSED_GRAYSCALE
8 bit per pixel (no alpha)
Language|Symbol
---|---
C|`PixelFormat PIXELFORMAT_UNCOMPRESSED_GRAYSCALE;`
Swift|``PixelFormat/w8``
### Texture parameters: filter mode
```c
TextureFilter TEXTURE_FILTER_ANISOTROPIC_16X; // Anisotropic filtering 16x
TextureFilter TEXTURE_FILTER_ANISOTROPIC_8X;  // Anisotropic filtering 8x
TextureFilter TEXTURE_FILTER_ANISOTROPIC_4X;  // Anisotropic filtering 4x
TextureFilter TEXTURE_FILTER_TRILINEAR;       // Trilinear filtering (linear with mipmaps)
TextureFilter TEXTURE_FILTER_BILINEAR;        // Linear filtering
TextureFilter TEXTURE_FILTER_POINT;           // No filter, just pixel approximation
```
> Note: Filtering considers mipmaps if available in the texture

> Note: Filter is accordingly set for minification and magnification

#### TEXTURE_FILTER_ANISOTROPIC_16X
Anisotropic filtering 16x
Language|Symbol
---|---
C|`TextureFilter TEXTURE_FILTER_ANISOTROPIC_16X;`
Swift|``TextureFilter/anisotropic16x``
#### TEXTURE_FILTER_ANISOTROPIC_8X
Anisotropic filtering 8x
Language|Symbol
---|---
C|`TextureFilter TEXTURE_FILTER_ANISOTROPIC_8X;`
Swift|``TextureFilter/anisotropic8x``
#### TEXTURE_FILTER_ANISOTROPIC_4X
Anisotropic filtering 4x
Language|Symbol
---|---
C|`TextureFilter TEXTURE_FILTER_ANISOTROPIC_4X;`
Swift|``TextureFilter/anisotropic4x``
#### TEXTURE_FILTER_TRILINEAR
Trilinear filtering (linear with mipmaps)
Language|Symbol
---|---
C|`TextureFilter TEXTURE_FILTER_TRILINEAR;`
Swift|``TextureFilter/trilinear``
#### TEXTURE_FILTER_BILINEAR
Linear filtering
Language|Symbol
---|---
C|`TextureFilter TEXTURE_FILTER_BILINEAR;`
Swift|``TextureFilter/bilinear``
#### TEXTURE_FILTER_POINT
No filter, just pixel approximation
Language|Symbol
---|---
C|`TextureFilter TEXTURE_FILTER_POINT;`
Swift|``TextureFilter/point``
### Texture parameters: wrap mode
```c
TextureWrap TEXTURE_WRAP_MIRROR_CLAMP;  // Mirrors and clamps to border the texture in tiled mode
TextureWrap TEXTURE_WRAP_MIRROR_REPEAT; // Mirrors and repeats the texture in tiled mode
TextureWrap TEXTURE_WRAP_CLAMP;         // Clamps texture to edge pixel in tiled mode
TextureWrap TEXTURE_WRAP_REPEAT;        // Repeats texture in tiled mode
```
#### TEXTURE_WRAP_MIRROR_CLAMP
Mirrors and clamps to border the texture in tiled mode
Language|Symbol
---|---
C|`TextureWrap TEXTURE_WRAP_MIRROR_CLAMP;`
Swift|``TextureWrap/mirroredClamp``
#### TEXTURE_WRAP_MIRROR_REPEAT
Mirrors and repeats the texture in tiled mode
Language|Symbol
---|---
C|`TextureWrap TEXTURE_WRAP_MIRROR_REPEAT;`
Swift|``TextureWrap/mirroredRepeat``
#### TEXTURE_WRAP_CLAMP
Clamps texture to edge pixel in tiled mode
Language|Symbol
---|---
C|`TextureWrap TEXTURE_WRAP_CLAMP;`
Swift|``TextureWrap/clamp``
#### TEXTURE_WRAP_REPEAT
Repeats texture in tiled mode
Language|Symbol
---|---
C|`TextureWrap TEXTURE_WRAP_REPEAT;`
Swift|``TextureWrap/repeat``
### Cubemap layouts
```c
CubemapLayout CUBEMAP_LAYOUT_PANORAMA;            // Layout is defined by a panorama image (equirrectangular map)
CubemapLayout CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE; // Layout is defined by a 4x3 cross with cubemap faces
CubemapLayout CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR; // Layout is defined by a 3x4 cross with cubemap faces
CubemapLayout CUBEMAP_LAYOUT_LINE_HORIZONTAL;     // Layout is defined by a horizontal line with faces
CubemapLayout CUBEMAP_LAYOUT_LINE_VERTICAL;       // Layout is defined by a vertical line with faces
CubemapLayout CUBEMAP_LAYOUT_AUTO_DETECT;         // Automatically detect layout type
```
#### CUBEMAP_LAYOUT_PANORAMA
Layout is defined by a panorama image (equirrectangular map)
Language|Symbol
---|---
C|`CubemapLayout CUBEMAP_LAYOUT_PANORAMA;`
Swift|*unimplemented*
#### CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE
Layout is defined by a 4x3 cross with cubemap faces
Language|Symbol
---|---
C|`CubemapLayout CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE;`
Swift|*unimplemented*
#### CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR
Layout is defined by a 3x4 cross with cubemap faces
Language|Symbol
---|---
C|`CubemapLayout CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR;`
Swift|*unimplemented*
#### CUBEMAP_LAYOUT_LINE_HORIZONTAL
Layout is defined by a horizontal line with faces
Language|Symbol
---|---
C|`CubemapLayout CUBEMAP_LAYOUT_LINE_HORIZONTAL;`
Swift|*unimplemented*
#### CUBEMAP_LAYOUT_LINE_VERTICAL
Layout is defined by a vertical line with faces
Language|Symbol
---|---
C|`CubemapLayout CUBEMAP_LAYOUT_LINE_VERTICAL;`
Swift|*unimplemented*
#### CUBEMAP_LAYOUT_AUTO_DETECT
Automatically detect layout type
Language|Symbol
---|---
C|`CubemapLayout CUBEMAP_LAYOUT_AUTO_DETECT;`
Swift|*unimplemented*
### Font type, defines generation method
```c
FontType FONT_SDF;     // SDF font generation, requires external shader
FontType FONT_BITMAP;  // Bitmap font generation, no anti-aliasing
FontType FONT_DEFAULT; // Default font generation, anti-aliased
```
#### FONT_SDF
SDF font generation, requires external shader
Language|Symbol
---|---
C|`FontType FONT_SDF;`
Swift|*unimplemented*
#### FONT_BITMAP
Bitmap font generation, no anti-aliasing
Language|Symbol
---|---
C|`FontType FONT_BITMAP;`
Swift|*unimplemented*
#### FONT_DEFAULT
Default font generation, anti-aliased
Language|Symbol
---|---
C|`FontType FONT_DEFAULT;`
Swift|*unimplemented*
### Color blending modes (pre-defined)
```c
BlendMode BLEND_CUSTOM_SEPARATE;   // Blend textures using custom rgb/alpha separate src/dst factors (use rlSetBlendFactorsSeparate())
BlendMode BLEND_CUSTOM;            // Blend textures using custom src/dst factors (use rlSetBlendFactors())
BlendMode BLEND_ALPHA_PREMULTIPLY; // Blend premultiplied textures considering alpha
BlendMode BLEND_SUBTRACT_COLORS;   // Blend textures subtracting colors (alternative)
BlendMode BLEND_ADD_COLORS;        // Blend textures adding colors (alternative)
BlendMode BLEND_MULTIPLIED;        // Blend textures multiplying colors
BlendMode BLEND_ADDITIVE;          // Blend textures adding colors
BlendMode BLEND_ALPHA;             // Blend textures considering alpha (default)
```
#### BLEND_CUSTOM_SEPARATE
Blend textures using custom rgb/alpha separate src/dst factors (use rlSetBlendFactorsSeparate())
Language|Symbol
---|---
C|`BlendMode BLEND_CUSTOM_SEPARATE;`
Swift|*unimplemented*
#### BLEND_CUSTOM
Blend textures using custom src/dst factors (use rlSetBlendFactors())
Language|Symbol
---|---
C|`BlendMode BLEND_CUSTOM;`
Swift|``Blend/custom``
#### BLEND_ALPHA_PREMULTIPLY
Blend premultiplied textures considering alpha
Language|Symbol
---|---
C|`BlendMode BLEND_ALPHA_PREMULTIPLY;`
Swift|``Blend/premultiplied``
#### BLEND_SUBTRACT_COLORS
Blend textures subtracting colors (alternative)
Language|Symbol
---|---
C|`BlendMode BLEND_SUBTRACT_COLORS;`
Swift|``Blend/subtract``
#### BLEND_ADD_COLORS
Blend textures adding colors (alternative)
Language|Symbol
---|---
C|`BlendMode BLEND_ADD_COLORS;`
Swift|``Blend/add``
#### BLEND_MULTIPLIED
Blend textures multiplying colors
Language|Symbol
---|---
C|`BlendMode BLEND_MULTIPLIED;`
Swift|``Blend/multiplied``
#### BLEND_ADDITIVE
Blend textures adding colors
Language|Symbol
---|---
C|`BlendMode BLEND_ADDITIVE;`
Swift|``Blend/additive``
#### BLEND_ALPHA
Blend textures considering alpha (default)
Language|Symbol
---|---
C|`BlendMode BLEND_ALPHA;`
Swift|``Blend/alpha``
### Gesture
```c
Gesture GESTURE_PINCH_OUT;   // Pinch out gesture
Gesture GESTURE_PINCH_IN;    // Pinch in gesture
Gesture GESTURE_SWIPE_DOWN;  // Swipe down gesture
Gesture GESTURE_SWIPE_UP;    // Swipe up gesture
Gesture GESTURE_SWIPE_LEFT;  // Swipe left gesture
Gesture GESTURE_SWIPE_RIGHT; // Swipe right gesture
Gesture GESTURE_DRAG;        // Drag gesture
Gesture GESTURE_HOLD;        // Hold gesture
Gesture GESTURE_DOUBLETAP;   // Double tap gesture
Gesture GESTURE_TAP;         // Tap gesture
Gesture GESTURE_NONE;        // No gesture
```
> Note: Provided as bit-wise flags to enable only desired gestures

#### GESTURE_PINCH_OUT
Pinch out gesture
Language|Symbol
---|---
C|`Gesture GESTURE_PINCH_OUT;`
Swift|*unimplemented*
#### GESTURE_PINCH_IN
Pinch in gesture
Language|Symbol
---|---
C|`Gesture GESTURE_PINCH_IN;`
Swift|*unimplemented*
#### GESTURE_SWIPE_DOWN
Swipe down gesture
Language|Symbol
---|---
C|`Gesture GESTURE_SWIPE_DOWN;`
Swift|*unimplemented*
#### GESTURE_SWIPE_UP
Swipe up gesture
Language|Symbol
---|---
C|`Gesture GESTURE_SWIPE_UP;`
Swift|*unimplemented*
#### GESTURE_SWIPE_LEFT
Swipe left gesture
Language|Symbol
---|---
C|`Gesture GESTURE_SWIPE_LEFT;`
Swift|*unimplemented*
#### GESTURE_SWIPE_RIGHT
Swipe right gesture
Language|Symbol
---|---
C|`Gesture GESTURE_SWIPE_RIGHT;`
Swift|*unimplemented*
#### GESTURE_DRAG
Drag gesture
Language|Symbol
---|---
C|`Gesture GESTURE_DRAG;`
Swift|*unimplemented*
#### GESTURE_HOLD
Hold gesture
Language|Symbol
---|---
C|`Gesture GESTURE_HOLD;`
Swift|*unimplemented*
#### GESTURE_DOUBLETAP
Double tap gesture
Language|Symbol
---|---
C|`Gesture GESTURE_DOUBLETAP;`
Swift|*unimplemented*
#### GESTURE_TAP
Tap gesture
Language|Symbol
---|---
C|`Gesture GESTURE_TAP;`
Swift|*unimplemented*
#### GESTURE_NONE
No gesture
Language|Symbol
---|---
C|`Gesture GESTURE_NONE;`
Swift|*unimplemented*
### Camera system modes
```c
CameraMode CAMERA_THIRD_PERSON; // Third person camera
CameraMode CAMERA_FIRST_PERSON; // First person camera
CameraMode CAMERA_ORBITAL;      // Orbital camera
CameraMode CAMERA_FREE;         // Free camera
CameraMode CAMERA_CUSTOM;       // Custom camera
```
#### CAMERA_THIRD_PERSON
Third person camera
Language|Symbol
---|---
C|`CameraMode CAMERA_THIRD_PERSON;`
Swift|*unimplemented*
#### CAMERA_FIRST_PERSON
First person camera
Language|Symbol
---|---
C|`CameraMode CAMERA_FIRST_PERSON;`
Swift|*unimplemented*
#### CAMERA_ORBITAL
Orbital camera
Language|Symbol
---|---
C|`CameraMode CAMERA_ORBITAL;`
Swift|*unimplemented*
#### CAMERA_FREE
Free camera
Language|Symbol
---|---
C|`CameraMode CAMERA_FREE;`
Swift|*unimplemented*
#### CAMERA_CUSTOM
Custom camera
Language|Symbol
---|---
C|`CameraMode CAMERA_CUSTOM;`
Swift|*unimplemented*
### Camera projection
```c
CameraProjection CAMERA_ORTHOGRAPHIC; // Orthographic projection
CameraProjection CAMERA_PERSPECTIVE;  // Perspective projection
```
#### CAMERA_ORTHOGRAPHIC
Orthographic projection
Language|Symbol
---|---
C|`CameraProjection CAMERA_ORTHOGRAPHIC;`
Swift|*unimplemented*
#### CAMERA_PERSPECTIVE
Perspective projection
Language|Symbol
---|---
C|`CameraProjection CAMERA_PERSPECTIVE;`
Swift|*unimplemented*
### N-patch layout
```c
NPatchLayout NPATCH_THREE_PATCH_HORIZONTAL; // Npatch layout: 3x1 tiles
NPatchLayout NPATCH_THREE_PATCH_VERTICAL;   // Npatch layout: 1x3 tiles
NPatchLayout NPATCH_NINE_PATCH;             // Npatch layout: 3x3 tiles
```
#### NPATCH_THREE_PATCH_HORIZONTAL
Npatch layout: 3x1 tiles
Language|Symbol
---|---
C|`NPatchLayout NPATCH_THREE_PATCH_HORIZONTAL;`
Swift|*unimplemented*
#### NPATCH_THREE_PATCH_VERTICAL
Npatch layout: 1x3 tiles
Language|Symbol
---|---
C|`NPatchLayout NPATCH_THREE_PATCH_VERTICAL;`
Swift|*unimplemented*
#### NPATCH_NINE_PATCH
Npatch layout: 3x3 tiles
Language|Symbol
---|---
C|`NPatchLayout NPATCH_NINE_PATCH;`
Swift|*unimplemented*
## Window and Graphics Device Functions (Module: core)
### Window-related functions
```c
void InitWindow(int width, int height, const char *title); // Initialize window and OpenGL context
bool WindowShouldClose(void);                              // Check if KEY_ESCAPE pressed or Close icon pressed
void CloseWindow(void);                                    // Close window and unload OpenGL context
bool IsWindowReady(void);                                  // Check if window has been initialized successfully
bool IsWindowFullscreen(void);                             // Check if window is currently fullscreen
bool IsWindowHidden(void);                                 // Check if window is currently hidden Note: Only available on desktop
bool IsWindowMinimized(void);                              // Check if window is currently minimized Note: Only available on desktop
bool IsWindowMaximized(void);                              // Check if window is currently maximized Note: Only available on desktop
bool IsWindowFocused(void);                                // Check if window is currently focused Note: Only available on desktop
bool IsWindowResized(void);                                // Check if window has been resized last frame
bool IsWindowState(unsigned int flag);                     // Check if one specific window flag is enabled
void SetWindowState(unsigned int flags);                   // Set window configuration state using flags Note: Only available on desktop
void ClearWindowState(unsigned int flags);                 // Clear window configuration state flags
void ToggleFullscreen(void);                               // Toggle window state: fullscreen/windowed Note: Only available on desktop
void MaximizeWindow(void);                                 // Set window state: maximized, if resizable Note: Only available on desktop
void MinimizeWindow(void);                                 // Set window state: minimized, if resizable Note: Only available on desktop
void RestoreWindow(void);                                  // Set window state: not minimized/maximized Note: Only available on desktop
void SetWindowIcon(Image image);                           // Set icon for window (single image, RGBA 32bit, only PLATFORM_DESKTOP)
void SetWindowIcons(Image *images, int count);             // Set icon for window (multiple images, RGBA 32bit, only PLATFORM_DESKTOP)
void SetWindowTitle(const char *title);                    // Set title for window Note: Only available on desktop
void SetWindowPosition(int x, int y);                      // Set window position on screen Note: Only available on desktop
void SetWindowMonitor(int monitor);                        // Set monitor for the current window (fullscreen mode)
void SetWindowMinSize(int width, int height);              // Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
void SetWindowSize(int width, int height);                 // Set window dimensions
void SetWindowOpacity(float opacity);                      // Set window opacity [0.0f..1.0f] Note: Only available on desktop
void *GetWindowHandle(void);                               // Get native window handle
int GetScreenWidth(void);                                  // Get current screen width
int GetScreenHeight(void);                                 // Get current screen height
int GetRenderWidth(void);                                  // Get current render width (it considers HiDPI)
int GetRenderHeight(void);                                 // Get current render height (it considers HiDPI)
int GetMonitorCount(void);                                 // Get number of connected monitors
int GetCurrentMonitor(void);                               // Get current connected monitor
Vector2 GetMonitorPosition(int monitor);                   // Get specified monitor position
int GetMonitorWidth(int monitor);                          // Get specified monitor width (current video mode used by monitor)
int GetMonitorHeight(int monitor);                         // Get specified monitor height (current video mode used by monitor)
int GetMonitorPhysicalWidth(int monitor);                  // Get specified monitor physical width in millimetres
int GetMonitorPhysicalHeight(int monitor);                 // Get specified monitor physical height in millimetres
int GetMonitorRefreshRate(int monitor);                    // Get specified monitor refresh rate
Vector2 GetWindowPosition(void);                           // Get window position XY on monitor
Vector2 GetWindowScaleDPI(void);                           // Get window scale DPI factor
const char *GetMonitorName(int monitor);                   // Get the human-readable, UTF-8 encoded name of the primary monitor
void SetClipboardText(const char *text);                   // Set clipboard text content
const char *GetClipboardText(void);                        // Get clipboard text content
void EnableEventWaiting(void);                             // Enable waiting for events on EndDrawing(), no automatic event polling
void DisableEventWaiting(void);                            // Disable waiting for events on EndDrawing(), automatic events polling
```
#### InitWindow
Initialize window and OpenGL context
Language|Symbol
---|---
C|`void InitWindow(int width, int height, const char *title);`
Swift|``Window/create(_:by:title:)``
#### WindowShouldClose
Check if KEY_ESCAPE pressed or Close icon pressed
Language|Symbol
---|---
C|`bool WindowShouldClose(void);`
Swift|``Application/isRunning``
#### CloseWindow
Close window and unload OpenGL context
Language|Symbol
---|---
C|`void CloseWindow(void);`
Swift|``Window/close()``
#### IsWindowReady
Check if window has been initialized successfully
Language|Symbol
---|---
C|`bool IsWindowReady(void);`
Swift|``Window/isReady``
#### IsWindowFullscreen
Check if window is currently fullscreen
Language|Symbol
---|---
C|`bool IsWindowFullscreen(void);`
Swift|``Window/isFullscreen``
#### IsWindowHidden
Check if window is currently hidden Note: Only available on desktop
Language|Symbol
---|---
C|`bool IsWindowHidden(void);`
Swift|``Window/isHidden``
#### IsWindowMinimized
Check if window is currently minimized Note: Only available on desktop
Language|Symbol
---|---
C|`bool IsWindowMinimized(void);`
Swift|``Window/isMinimized``
#### IsWindowMaximized
Check if window is currently maximized Note: Only available on desktop
Language|Symbol
---|---
C|`bool IsWindowMaximized(void);`
Swift|``Window/isMaximized``
#### IsWindowFocused
Check if window is currently focused Note: Only available on desktop
Language|Symbol
---|---
C|`bool IsWindowFocused(void);`
Swift|``Window/isFocused``
#### IsWindowResized
Check if window has been resized last frame
Language|Symbol
---|---
C|`bool IsWindowResized(void);`
Swift|``Window/wasResized``
#### IsWindowState
Check if one specific window flag is enabled
Language|Symbol
---|---
C|`bool IsWindowState(unsigned int flag);`
Swift|``WindowFlags/isEnabled``
#### SetWindowState
Set window configuration state using flags Note: Only available on desktop
Language|Symbol
---|---
C|`void SetWindowState(unsigned int flags);`
Swift|``Window/enable(_:)``, ``WindowFlags/isEnabled`` and ``WindowFlags/enable()``
#### ClearWindowState
Clear window configuration state flags
Language|Symbol
---|---
C|`void ClearWindowState(unsigned int flags);`
Swift|``Window/disable(_:)``, ``WindowFlags/isEnabled`` and ``WindowFlags/disable()``
#### ToggleFullscreen
Toggle window state: fullscreen/windowed Note: Only available on desktop
Language|Symbol
---|---
C|`void ToggleFullscreen(void);`
Swift|``Window/isFullscreen``
#### MaximizeWindow
Set window state: maximized, if resizable Note: Only available on desktop
Language|Symbol
---|---
C|`void MaximizeWindow(void);`
Swift|``Window/maximize()``
#### MinimizeWindow
Set window state: minimized, if resizable Note: Only available on desktop
Language|Symbol
---|---
C|`void MinimizeWindow(void);`
Swift|``Window/minimize()``
#### RestoreWindow
Set window state: not minimized/maximized Note: Only available on desktop
Language|Symbol
---|---
C|`void RestoreWindow(void);`
Swift|``Window/restore()``
#### SetWindowIcon
Set icon for window (single image, RGBA 32bit, only PLATFORM_DESKTOP)
Language|Symbol
---|---
C|`void SetWindowIcon(Image image);`
Swift|``Window/set(icon:)``
#### SetWindowIcons
Set icon for window (multiple images, RGBA 32bit, only PLATFORM_DESKTOP)
Language|Symbol
---|---
C|`void SetWindowIcons(Image *images, int count);`
Swift|*unimplemented*
#### SetWindowTitle
Set title for window Note: Only available on desktop
Language|Symbol
---|---
C|`void SetWindowTitle(const char *title);`
Swift|``Window/rename(to:)``
#### SetWindowPosition
Set window position on screen Note: Only available on desktop
Language|Symbol
---|---
C|`void SetWindowPosition(int x, int y);`
Swift|``Window/place(at:_:)``
#### SetWindowMonitor
Set monitor for the current window (fullscreen mode)
Language|Symbol
---|---
C|`void SetWindowMonitor(int monitor);`
Swift|``Window/assign(to:)``
#### SetWindowMinSize
Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
Language|Symbol
---|---
C|`void SetWindowMinSize(int width, int height);`
Swift|``Window/resize(minimum:by:)``
#### SetWindowSize
Set window dimensions
Language|Symbol
---|---
C|`void SetWindowSize(int width, int height);`
Swift|``Window/resize(to:by:)``
#### SetWindowOpacity
Set window opacity [0.0f..1.0f] Note: Only available on desktop
Language|Symbol
---|---
C|`void SetWindowOpacity(float opacity);`
Swift|*unimplemented*
#### GetWindowHandle
Get native window handle
Language|Symbol
---|---
C|`void *GetWindowHandle(void);`
Swift|``Window/native``
#### GetScreenWidth
Get current screen width
Language|Symbol
---|---
C|`int GetScreenWidth(void);`
Swift|``Window/width`` and ``Window/size``
#### GetScreenHeight
Get current screen height
Language|Symbol
---|---
C|`int GetScreenHeight(void);`
Swift|``Window/height`` and ``Window/size``
#### GetRenderWidth
Get current render width (it considers HiDPI)
Language|Symbol
---|---
C|`int GetRenderWidth(void);`
Swift|*unimplemented*
#### GetRenderHeight
Get current render height (it considers HiDPI)
Language|Symbol
---|---
C|`int GetRenderHeight(void);`
Swift|*unimplemented*
#### GetMonitorCount
Get number of connected monitors
Language|Symbol
---|---
C|`int GetMonitorCount(void);`
Swift|``Monitor/count`` and ``Monitor/all``
#### GetCurrentMonitor
Get current connected monitor
Language|Symbol
---|---
C|`int GetCurrentMonitor(void);`
Swift|``Monitor/current``
#### GetMonitorPosition
Get specified monitor position
Language|Symbol
---|---
C|`Vector2 GetMonitorPosition(int monitor);`
Swift|``Monitor/position``
#### GetMonitorWidth
Get specified monitor width (current video mode used by monitor)
Language|Symbol
---|---
C|`int GetMonitorWidth(int monitor);`
Swift|``Monitor/width``
#### GetMonitorHeight
Get specified monitor height (current video mode used by monitor)
Language|Symbol
---|---
C|`int GetMonitorHeight(int monitor);`
Swift|``Monitor/height``
#### GetMonitorPhysicalWidth
Get specified monitor physical width in millimetres
Language|Symbol
---|---
C|`int GetMonitorPhysicalWidth(int monitor);`
Swift|``Monitor/physicalWidth``
#### GetMonitorPhysicalHeight
Get specified monitor physical height in millimetres
Language|Symbol
---|---
C|`int GetMonitorPhysicalHeight(int monitor);`
Swift|``Monitor/physicalHeight``
#### GetMonitorRefreshRate
Get specified monitor refresh rate
Language|Symbol
---|---
C|`int GetMonitorRefreshRate(int monitor);`
Swift|``Monitor/refreshRate``
#### GetWindowPosition
Get window position XY on monitor
Language|Symbol
---|---
C|`Vector2 GetWindowPosition(void);`
Swift|``Window/position``
#### GetWindowScaleDPI
Get window scale DPI factor
Language|Symbol
---|---
C|`Vector2 GetWindowScaleDPI(void);`
Swift|``Window/scaleDPI``
#### GetMonitorName
Get the human-readable, UTF-8 encoded name of the primary monitor
Language|Symbol
---|---
C|`const char *GetMonitorName(int monitor);`
Swift|``Monitor/name``
#### SetClipboardText
Set clipboard text content
Language|Symbol
---|---
C|`void SetClipboardText(const char *text);`
Swift|``Clipboard/text``
#### GetClipboardText
Get clipboard text content
Language|Symbol
---|---
C|`const char *GetClipboardText(void);`
Swift|``Clipboard/text``
#### EnableEventWaiting
Enable waiting for events on EndDrawing(), no automatic event polling
Language|Symbol
---|---
C|`void EnableEventWaiting(void);`
Swift|*unimplemented*
#### DisableEventWaiting
Disable waiting for events on EndDrawing(), automatic events polling
Language|Symbol
---|---
C|`void DisableEventWaiting(void);`
Swift|*unimplemented*
### Custom frame control functions
```c
void SwapScreenBuffer(void);   // Swap back buffer with front buffer (screen drawing)
void PollInputEvents(void);    // Register all input events
void WaitTime(double seconds); // Wait for some time (halt program execution)
```
> Note: Those functions are intended for advance users that want full control over the frame processing default EndDrawing() does this job: draws everything + SwapScreenBuffer() + manage frame timing + PollInputEvents() avoid that behaviour and control frame processes manually, enable in config.h: SUPPORT_CUSTOM_FRAME_CONTROL

#### SwapScreenBuffer
Swap back buffer with front buffer (screen drawing)
Language|Symbol
---|---
C|`void SwapScreenBuffer(void);`
Swift|*unimplemented*
#### PollInputEvents
Register all input events
Language|Symbol
---|---
C|`void PollInputEvents(void);`
Swift|*unimplemented*
#### WaitTime
Wait for some time (halt program execution)
Language|Symbol
---|---
C|`void WaitTime(double seconds);`
Swift|*unimplemented*
### Cursor-related functions
```c
void ShowCursor(void);       // Shows cursor
void HideCursor(void);       // Hides cursor
bool IsCursorHidden(void);   // Check if cursor is not visible
void EnableCursor(void);     // Enables cursor (unlock cursor)
void DisableCursor(void);    // Disables cursor (lock cursor)
bool IsCursorOnScreen(void); // Check if cursor is on the screen
```
#### ShowCursor
Shows cursor
Language|Symbol
---|---
C|`void ShowCursor(void);`
Swift|``Cursor/show()``
#### HideCursor
Hides cursor
Language|Symbol
---|---
C|`void HideCursor(void);`
Swift|``Cursor/hide()``
#### IsCursorHidden
Check if cursor is not visible
Language|Symbol
---|---
C|`bool IsCursorHidden(void);`
Swift|``Cursor/isHidden``
#### EnableCursor
Enables cursor (unlock cursor)
Language|Symbol
---|---
C|`void EnableCursor(void);`
Swift|``Cursor/enable()``
#### DisableCursor
Disables cursor (lock cursor)
Language|Symbol
---|---
C|`void DisableCursor(void);`
Swift|``Cursor/disable()``
#### IsCursorOnScreen
Check if cursor is on the screen
Language|Symbol
---|---
C|`bool IsCursorOnScreen(void);`
Swift|``Cursor/isOnScreen``
### Drawing-related functions
```c
void ClearBackground(Color color);                          // Set background color (framebuffer clear color)
void BeginDrawing(void);                                    // Setup canvas (framebuffer) to start drawing
void EndDrawing(void);                                      // End canvas drawing and swap buffers (double buffering)
void BeginMode2D(Camera2D camera);                          // Begin 2D mode with custom camera (2D)
void EndMode2D(void);                                       // Ends 2D mode with custom camera
void BeginMode3D(Camera3D camera);                          // Begin 3D mode with custom camera (3D)
void EndMode3D(void);                                       // Ends 3D mode and returns to default 2D orthographic mode
void BeginTextureMode(RenderTexture2D target);              // Begin drawing to render texture
void EndTextureMode(void);                                  // Ends drawing to render texture
void BeginShaderMode(Shader shader);                        // Begin custom shader drawing
void EndShaderMode(void);                                   // End custom shader drawing (use default shader)
void BeginBlendMode(int mode);                              // Begin blending mode (alpha, additive, multiplied, subtract, custom)
void EndBlendMode(void);                                    // End blending mode (reset to default: alpha blending)
void BeginScissorMode(int x, int y, int width, int height); // Begin scissor mode (define screen area for following drawing)
void EndScissorMode(void);                                  // End scissor mode
void BeginVrStereoMode(VrStereoConfig config);              // Begin stereo rendering (requires VR simulator)
void EndVrStereoMode(void);                                 // End stereo rendering (requires VR simulator)
```
#### ClearBackground
Set background color (framebuffer clear color)
Language|Symbol
---|---
C|`void ClearBackground(Color color);`
Swift|``Renderer/clear(to:)``
#### BeginDrawing
Setup canvas (framebuffer) to start drawing
Language|Symbol
---|---
C|`void BeginDrawing(void);`
Swift|``Renderer/render(draw:)``
#### EndDrawing
End canvas drawing and swap buffers (double buffering)
Language|Symbol
---|---
C|`void EndDrawing(void);`
Swift|``Renderer/render(draw:)``
#### BeginMode2D
Begin 2D mode with custom camera (2D)
Language|Symbol
---|---
C|`void BeginMode2D(Camera2D camera);`
Swift|``Camera2D/render(draw:)``
#### EndMode2D
Ends 2D mode with custom camera
Language|Symbol
---|---
C|`void EndMode2D(void);`
Swift|``Camera2D/render(draw:)``
#### BeginMode3D
Begin 3D mode with custom camera (3D)
Language|Symbol
---|---
C|`void BeginMode3D(Camera3D camera);`
Swift|``Camera3D/render(draw:)``
#### EndMode3D
Ends 3D mode and returns to default 2D orthographic mode
Language|Symbol
---|---
C|`void EndMode3D(void);`
Swift|``Camera3D/render(draw:)``
#### BeginTextureMode
Begin drawing to render texture
Language|Symbol
---|---
C|`void BeginTextureMode(RenderTexture2D target);`
Swift|``RenderTexture/render(draw:)``
#### EndTextureMode
Ends drawing to render texture
Language|Symbol
---|---
C|`void EndTextureMode(void);`
Swift|``RenderTexture/render(draw:)``
#### BeginShaderMode
Begin custom shader drawing
Language|Symbol
---|---
C|`void BeginShaderMode(Shader shader);`
Swift|``Shader/render(draw:)``
#### EndShaderMode
End custom shader drawing (use default shader)
Language|Symbol
---|---
C|`void EndShaderMode(void);`
Swift|``Shader/render(draw:)``
#### BeginBlendMode
Begin blending mode (alpha, additive, multiplied, subtract, custom)
Language|Symbol
---|---
C|`void BeginBlendMode(int mode);`
Swift|``Blend/render(draw:)``
#### EndBlendMode
End blending mode (reset to default: alpha blending)
Language|Symbol
---|---
C|`void EndBlendMode(void);`
Swift|``Blend/render(draw:)``
#### BeginScissorMode
Begin scissor mode (define screen area for following drawing)
Language|Symbol
---|---
C|`void BeginScissorMode(int x, int y, int width, int height);`
Swift|``Renderer/render(at:_:size:by:draw:)``
#### EndScissorMode
End scissor mode
Language|Symbol
---|---
C|`void EndScissorMode(void);`
Swift|``Renderer/render(at:_:size:by:draw:)``
#### BeginVrStereoMode
Begin stereo rendering (requires VR simulator)
Language|Symbol
---|---
C|`void BeginVrStereoMode(VrStereoConfig config);`
Swift|*unimplemented*
#### EndVrStereoMode
End stereo rendering (requires VR simulator)
Language|Symbol
---|---
C|`void EndVrStereoMode(void);`
Swift|*unimplemented*
### VR stereo config functions for VR simulator
```c
VrStereoConfig LoadVrStereoConfig(VrDeviceInfo device); // Load VR stereo config for VR simulator device parameters
void UnloadVrStereoConfig(VrStereoConfig config);       // Unload VR stereo config
```
#### LoadVrStereoConfig
Load VR stereo config for VR simulator device parameters
Language|Symbol
---|---
C|`VrStereoConfig LoadVrStereoConfig(VrDeviceInfo device);`
Swift|*unimplemented*
#### UnloadVrStereoConfig
Unload VR stereo config
Language|Symbol
---|---
C|`void UnloadVrStereoConfig(VrStereoConfig config);`
Swift|*unimplemented*
### Shader management functions
```c
Shader LoadShader(const char *vsFileName, const char *fsFileName);                                // Load shader from files and bind default locations
Shader LoadShaderFromMemory(const char *vsCode, const char *fsCode);                              // Load shader from code strings and bind default locations
bool IsShaderReady(Shader shader);                                                                // Check if a shader is ready
int GetShaderLocation(Shader shader, const char *uniformName);                                    // Get shader uniform location
int GetShaderLocationAttrib(Shader shader, const char *attribName);                               // Get shader attribute location
void SetShaderValue(Shader shader, int locIndex, const void *value, int uniformType);             // Set shader uniform value
void SetShaderValueV(Shader shader, int locIndex, const void *value, int uniformType, int count); // Set shader uniform value vector
void SetShaderValueMatrix(Shader shader, int locIndex, Matrix mat);                               // Set shader uniform value (matrix 4x4)
void SetShaderValueTexture(Shader shader, int locIndex, Texture2D texture);                       // Set shader uniform value for texture (sampler2d)
void UnloadShader(Shader shader);                                                                 // Unload shader from GPU memory (VRAM)
```
> Note: Shader functionality is not available on OpenGL 1.1

#### LoadShader
Load shader from files and bind default locations
Language|Symbol
---|---
C|`Shader LoadShader(const char *vsFileName, const char *fsFileName);`
Swift|``Shader/init(path:_:)``
#### LoadShaderFromMemory
Load shader from code strings and bind default locations
Language|Symbol
---|---
C|`Shader LoadShaderFromMemory(const char *vsCode, const char *fsCode);`
Swift|``Shader/init(memory:_:)``
#### IsShaderReady
Check if a shader is ready
Language|Symbol
---|---
C|`bool IsShaderReady(Shader shader);`
Swift|*unimplemented*
#### GetShaderLocation
Get shader uniform location
Language|Symbol
---|---
C|`int GetShaderLocation(Shader shader, const char *uniformName);`
Swift|``Shader/uniform(_:of:)``
#### GetShaderLocationAttrib
Get shader attribute location
Language|Symbol
---|---
C|`int GetShaderLocationAttrib(Shader shader, const char *attribName);`
Swift|``Shader/attribute(_:)``
#### SetShaderValue
Set shader uniform value
Language|Symbol
---|---
C|`void SetShaderValue(Shader shader, int locIndex, const void *value, int uniformType);`
Swift|``Uniform/write(_:)``
#### SetShaderValueV
Set shader uniform value vector
Language|Symbol
---|---
C|`void SetShaderValueV(Shader shader, int locIndex, const void *value, int uniformType, int count);`
Swift|``Uniform/write(_:)``
#### SetShaderValueMatrix
Set shader uniform value (matrix 4x4)
Language|Symbol
---|---
C|`void SetShaderValueMatrix(Shader shader, int locIndex, Matrix mat);`
Swift|*unimplemented*
#### SetShaderValueTexture
Set shader uniform value for texture (sampler2d)
Language|Symbol
---|---
C|`void SetShaderValueTexture(Shader shader, int locIndex, Texture2D texture);`
Swift|*unimplemented*
#### UnloadShader
Unload shader from GPU memory (VRAM)
Language|Symbol
---|---
C|`void UnloadShader(Shader shader);`
Swift|
### Screen-space-related functions
```c
Ray GetMouseRay(Vector2 mousePosition, Camera camera);                              // Get a ray trace from mouse position
Matrix GetCameraMatrix(Camera camera);                                              // Get camera transform matrix (view matrix)
Matrix GetCameraMatrix2D(Camera2D camera);                                          // Get camera 2d transform matrix
Vector2 GetWorldToScreen(Vector3 position, Camera camera);                          // Get the screen space position for a 3d world space position
Vector2 GetScreenToWorld2D(Vector2 position, Camera2D camera);                      // Get the world space position for a 2d camera screen space position
Vector2 GetWorldToScreenEx(Vector3 position, Camera camera, int width, int height); // Get size position for a 3d world space position
Vector2 GetWorldToScreen2D(Vector2 position, Camera2D camera);                      // Get the screen space position for a 2d camera world space position
```
#### GetMouseRay
Get a ray trace from mouse position
Language|Symbol
---|---
C|`Ray GetMouseRay(Vector2 mousePosition, Camera camera);`
Swift|*unimplemented*
#### GetCameraMatrix
Get camera transform matrix (view matrix)
Language|Symbol
---|---
C|`Matrix GetCameraMatrix(Camera camera);`
Swift|``Camera3D/matrix``
#### GetCameraMatrix2D
Get camera 2d transform matrix
Language|Symbol
---|---
C|`Matrix GetCameraMatrix2D(Camera2D camera);`
Swift|``Camera2D/matrix``
#### GetWorldToScreen
Get the screen space position for a 3d world space position
Language|Symbol
---|---
C|`Vector2 GetWorldToScreen(Vector3 position, Camera camera);`
Swift|``Camera3D/toScreen(world:)``
#### GetScreenToWorld2D
Get the world space position for a 2d camera screen space position
Language|Symbol
---|---
C|`Vector2 GetScreenToWorld2D(Vector2 position, Camera2D camera);`
Swift|``Camera2D/toWorld(screen:)``
#### GetWorldToScreenEx
Get size position for a 3d world space position
Language|Symbol
---|---
C|`Vector2 GetWorldToScreenEx(Vector3 position, Camera camera, int width, int height);`
Swift|``Camera3D/toScreen(world:size:by:)``
#### GetWorldToScreen2D
Get the screen space position for a 2d camera world space position
Language|Symbol
---|---
C|`Vector2 GetWorldToScreen2D(Vector2 position, Camera2D camera);`
Swift|``Camera2D/toScreen(world:)``
### Timing-related functions
```c
void SetTargetFPS(int fps); // Set target FPS (maximum)
int GetFPS(void);           // Get current FPS
float GetFrameTime(void);   // Get time in seconds for last frame drawn (delta time)
double GetTime(void);       // Get elapsed time in seconds since InitWindow()
```
#### SetTargetFPS
Set target FPS (maximum)
Language|Symbol
---|---
C|`void SetTargetFPS(int fps);`
Swift|``Application/target(fps:)``
#### GetFPS
Get current FPS
Language|Symbol
---|---
C|`int GetFPS(void);`
Swift|``Time/fps``
#### GetFrameTime
Get time in seconds for last frame drawn (delta time)
Language|Symbol
---|---
C|`float GetFrameTime(void);`
Swift|``Time/delta``
#### GetTime
Get elapsed time in seconds since InitWindow()
Language|Symbol
---|---
C|`double GetTime(void);`
Swift|``Time/lifetime``
### Misc. functions
```c
int GetRandomValue(int min, int max);               // Get a random value between min and max (both included)
void SetRandomSeed(unsigned int seed);              // Set the seed for the random number generator
void TakeScreenshot(const char *fileName);          // Takes a screenshot of current screen (filename extension defines format)
void SetConfigFlags(unsigned int flags);            // Setup init configuration flags (view FLAGS)
void TraceLog(int logLevel, const char *text, ...); // Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
void SetTraceLogLevel(int logLevel);                // Set the current threshold (minimum) log level
void *MemAlloc(unsigned int size);                  // Internal memory allocator
void *MemRealloc(void *ptr, unsigned int size);     // Internal memory reallocator
void MemFree(void *ptr);                            // Internal memory free
void OpenURL(const char *url);                      // Open URL with default system browser (if available)
```
#### GetRandomValue
Get a random value between min and max (both included)
Language|Symbol
---|---
C|`int GetRandomValue(int min, int max);`
Swift|``Random/between(_:and:)``
#### SetRandomSeed
Set the seed for the random number generator
Language|Symbol
---|---
C|`void SetRandomSeed(unsigned int seed);`
Swift|``Random/seed(using:)``
#### TakeScreenshot
Takes a screenshot of current screen (filename extension defines format)
Language|Symbol
---|---
C|`void TakeScreenshot(const char *fileName);`
Swift|``Screen/screenshot(as:)``
#### SetConfigFlags
Setup init configuration flags (view FLAGS)
Language|Symbol
---|---
C|`void SetConfigFlags(unsigned int flags);`
Swift|*unimplemented*
#### TraceLog
Show trace log messages (LOG_DEBUG, LOG_INFO, LOG_WARNING, LOG_ERROR...)
Language|Symbol
---|---
C|`void TraceLog(int logLevel, const char *text, ...);`
Swift|``Trace/log(_:_:)``, ``Trace/trace(_:)``, ``Trace/debug(_:)``, ``Trace/info(_:)``, ``Trace/warning(_:)``, ``Trace/error(_:)`` and ``Trace/fatal(_:)``
#### SetTraceLogLevel
Set the current threshold (minimum) log level
Language|Symbol
---|---
C|`void SetTraceLogLevel(int logLevel);`
Swift|``Trace/configure(threshold:)``
#### MemAlloc
Internal memory allocator
Language|Symbol
---|---
C|`void *MemAlloc(unsigned int size);`
Swift|``Allocator/allocate(size:)``
#### MemRealloc
Internal memory reallocator
Language|Symbol
---|---
C|`void *MemRealloc(void *ptr, unsigned int size);`
Swift|``Allocator/reallocate(_:size:)``
#### MemFree
Internal memory free
Language|Symbol
---|---
C|`void MemFree(void *ptr);`
Swift|``Allocator/free(_:)``
#### OpenURL
Open URL with default system browser (if available)
Language|Symbol
---|---
C|`void OpenURL(const char *url);`
Swift|``System/open(_:)-y5jl``
### Set custom callbacks
```c
void SetTraceLogCallback(TraceLogCallback callback);         // Set custom trace log
void SetLoadFileDataCallback(LoadFileDataCallback callback); // Set custom file binary data loader
void SetSaveFileDataCallback(SaveFileDataCallback callback); // Set custom file binary data saver
void SetLoadFileTextCallback(LoadFileTextCallback callback); // Set custom file text data loader
void SetSaveFileTextCallback(SaveFileTextCallback callback); // Set custom file text data saver
```
> Warning: Callbacks setup is intended for advance users

#### SetTraceLogCallback
Set custom trace log
Language|Symbol
---|---
C|`void SetTraceLogCallback(TraceLogCallback callback);`
Swift|*unimplemented*
#### SetLoadFileDataCallback
Set custom file binary data loader
Language|Symbol
---|---
C|`void SetLoadFileDataCallback(LoadFileDataCallback callback);`
Swift|*unimplemented*
#### SetSaveFileDataCallback
Set custom file binary data saver
Language|Symbol
---|---
C|`void SetSaveFileDataCallback(SaveFileDataCallback callback);`
Swift|*unimplemented*
#### SetLoadFileTextCallback
Set custom file text data loader
Language|Symbol
---|---
C|`void SetLoadFileTextCallback(LoadFileTextCallback callback);`
Swift|*unimplemented*
#### SetSaveFileTextCallback
Set custom file text data saver
Language|Symbol
---|---
C|`void SetSaveFileTextCallback(SaveFileTextCallback callback);`
Swift|*unimplemented*
### Files management functions
```c
unsigned char *LoadFileData(const char *fileName, unsigned int *bytesRead);                    // Load file data as byte array (read)
void UnloadFileData(unsigned char *data);                                                      // Unload file data allocated by LoadFileData()
bool SaveFileData(const char *fileName, void *data, unsigned int bytesToWrite);                // Save data to file from byte array (write), returns true on success
bool ExportDataAsCode(const unsigned char *data, unsigned int size, const char *fileName);     // Export data to code (.h), returns true on success
char *LoadFileText(const char *fileName);                                                      // Load text data from file (read), returns a '\0' terminated string
void UnloadFileText(char *text);                                                               // Unload file text data allocated by LoadFileText()
bool SaveFileText(const char *fileName, char *text);                                           // Save text data to file (write), string must be '\0' terminated, returns true on success
bool FileExists(const char *fileName);                                                         // Check if file exists
bool DirectoryExists(const char *dirPath);                                                     // Check if a directory path exists
bool IsFileExtension(const char *fileName, const char *ext);                                   // Check file extension (including point: .png, .wav)
int GetFileLength(const char *fileName);                                                       // Get file length in bytes (NOTE: GetFileSize() conflicts with windows.h)
const char *GetFileExtension(const char *fileName);                                            // Get pointer to extension for a filename string (includes dot: '.png')
const char *GetFileName(const char *filePath);                                                 // Get pointer to filename for a path string
const char *GetFileNameWithoutExt(const char *filePath);                                       // Get filename string without extension (uses static string)
const char *GetDirectoryPath(const char *filePath);                                            // Get full path for a given fileName with path (uses static string)
const char *GetPrevDirectoryPath(const char *dirPath);                                         // Get previous directory path for a given path (uses static string)
const char *GetWorkingDirectory(void);                                                         // Get current working directory (uses static string)
const char *GetApplicationDirectory(void);                                                     // Get the directory if the running application (uses static string)
bool ChangeDirectory(const char *dir);                                                         // Change working directory, return true on success
bool IsPathFile(const char *path);                                                             // Check if a given path is a file or a directory
FilePathList LoadDirectoryFiles(const char *dirPath);                                          // Load directory filepaths
FilePathList LoadDirectoryFilesEx(const char *basePath, const char *filter, bool scanSubdirs); // Load directory filepaths with extension filtering and recursive directory scan
void UnloadDirectoryFiles(FilePathList files);                                                 // Unload filepaths
bool IsFileDropped(void);                                                                      // Check if a file has been dropped into window
FilePathList LoadDroppedFiles(void);                                                           // Load dropped filepaths
void UnloadDroppedFiles(FilePathList files);                                                   // Unload dropped filepaths
long GetFileModTime(const char *fileName);                                                     // Get file modification time (last write time)
```
#### LoadFileData
Load file data as byte array (read)
Language|Symbol
---|---
C|`unsigned char *LoadFileData(const char *fileName, unsigned int *bytesRead);`
Swift|*unimplemented*
#### UnloadFileData
Unload file data allocated by LoadFileData()
Language|Symbol
---|---
C|`void UnloadFileData(unsigned char *data);`
Swift|*unimplemented*
#### SaveFileData
Save data to file from byte array (write), returns true on success
Language|Symbol
---|---
C|`bool SaveFileData(const char *fileName, void *data, unsigned int bytesToWrite);`
Swift|*unimplemented*
#### ExportDataAsCode
Export data to code (.h), returns true on success
Language|Symbol
---|---
C|`bool ExportDataAsCode(const unsigned char *data, unsigned int size, const char *fileName);`
Swift|*unimplemented*
#### LoadFileText
Load text data from file (read), returns a '\0' terminated string
Language|Symbol
---|---
C|`char *LoadFileText(const char *fileName);`
Swift|*unimplemented*
#### UnloadFileText
Unload file text data allocated by LoadFileText()
Language|Symbol
---|---
C|`void UnloadFileText(char *text);`
Swift|*unimplemented*
#### SaveFileText
Save text data to file (write), string must be '\0' terminated, returns true on success
Language|Symbol
---|---
C|`bool SaveFileText(const char *fileName, char *text);`
Swift|*unimplemented*
#### FileExists
Check if file exists
Language|Symbol
---|---
C|`bool FileExists(const char *fileName);`
Swift|*unimplemented*
#### DirectoryExists
Check if a directory path exists
Language|Symbol
---|---
C|`bool DirectoryExists(const char *dirPath);`
Swift|*unimplemented*
#### IsFileExtension
Check file extension (including point: .png, .wav)
Language|Symbol
---|---
C|`bool IsFileExtension(const char *fileName, const char *ext);`
Swift|*unimplemented*
#### GetFileLength
Get file length in bytes (NOTE: GetFileSize() conflicts with windows.h)
Language|Symbol
---|---
C|`int GetFileLength(const char *fileName);`
Swift|*unimplemented*
#### GetFileExtension
Get pointer to extension for a filename string (includes dot: '.png')
Language|Symbol
---|---
C|`const char *GetFileExtension(const char *fileName);`
Swift|*unimplemented*
#### GetFileName
Get pointer to filename for a path string
Language|Symbol
---|---
C|`const char *GetFileName(const char *filePath);`
Swift|*unimplemented*
#### GetFileNameWithoutExt
Get filename string without extension (uses static string)
Language|Symbol
---|---
C|`const char *GetFileNameWithoutExt(const char *filePath);`
Swift|*unimplemented*
#### GetDirectoryPath
Get full path for a given fileName with path (uses static string)
Language|Symbol
---|---
C|`const char *GetDirectoryPath(const char *filePath);`
Swift|*unimplemented*
#### GetPrevDirectoryPath
Get previous directory path for a given path (uses static string)
Language|Symbol
---|---
C|`const char *GetPrevDirectoryPath(const char *dirPath);`
Swift|*unimplemented*
#### GetWorkingDirectory
Get current working directory (uses static string)
Language|Symbol
---|---
C|`const char *GetWorkingDirectory(void);`
Swift|*unimplemented*
#### GetApplicationDirectory
Get the directory if the running application (uses static string)
Language|Symbol
---|---
C|`const char *GetApplicationDirectory(void);`
Swift|*unimplemented*
#### ChangeDirectory
Change working directory, return true on success
Language|Symbol
---|---
C|`bool ChangeDirectory(const char *dir);`
Swift|*unimplemented*
#### IsPathFile
Check if a given path is a file or a directory
Language|Symbol
---|---
C|`bool IsPathFile(const char *path);`
Swift|*unimplemented*
#### LoadDirectoryFiles
Load directory filepaths
Language|Symbol
---|---
C|`FilePathList LoadDirectoryFiles(const char *dirPath);`
Swift|*unimplemented*
#### LoadDirectoryFilesEx
Load directory filepaths with extension filtering and recursive directory scan
Language|Symbol
---|---
C|`FilePathList LoadDirectoryFilesEx(const char *basePath, const char *filter, bool scanSubdirs);`
Swift|*unimplemented*
#### UnloadDirectoryFiles
Unload filepaths
Language|Symbol
---|---
C|`void UnloadDirectoryFiles(FilePathList files);`
Swift|*unimplemented*
#### IsFileDropped
Check if a file has been dropped into window
Language|Symbol
---|---
C|`bool IsFileDropped(void);`
Swift|*unimplemented*
#### LoadDroppedFiles
Load dropped filepaths
Language|Symbol
---|---
C|`FilePathList LoadDroppedFiles(void);`
Swift|*unimplemented*
#### UnloadDroppedFiles
Unload dropped filepaths
Language|Symbol
---|---
C|`void UnloadDroppedFiles(FilePathList files);`
Swift|*unimplemented*
#### GetFileModTime
Get file modification time (last write time)
Language|Symbol
---|---
C|`long GetFileModTime(const char *fileName);`
Swift|*unimplemented*
### Compression/Encoding functionality
```c
unsigned char *CompressData(const unsigned char *data, int dataSize, int *compDataSize);       // Compress data (DEFLATE algorithm), memory must be MemFree()
unsigned char *DecompressData(const unsigned char *compData, int compDataSize, int *dataSize); // Decompress data (DEFLATE algorithm), memory must be MemFree()
char *EncodeDataBase64(const unsigned char *data, int dataSize, int *outputSize);              // Encode data to Base64 string, memory must be MemFree()
unsigned char *DecodeDataBase64(const unsigned char *data, int *outputSize);                   // Decode Base64 string data, memory must be MemFree()
```
#### CompressData
Compress data (DEFLATE algorithm), memory must be MemFree()
Language|Symbol
---|---
C|`unsigned char *CompressData(const unsigned char *data, int dataSize, int *compDataSize);`
Swift|``Serialization/compress(_:)``
#### DecompressData
Decompress data (DEFLATE algorithm), memory must be MemFree()
Language|Symbol
---|---
C|`unsigned char *DecompressData(const unsigned char *compData, int compDataSize, int *dataSize);`
Swift|``Serialization/decompress(_:)``
#### EncodeDataBase64
Encode data to Base64 string, memory must be MemFree()
Language|Symbol
---|---
C|`char *EncodeDataBase64(const unsigned char *data, int dataSize, int *outputSize);`
Swift|``Serialization/encode(_:)``
#### DecodeDataBase64
Decode Base64 string data, memory must be MemFree()
Language|Symbol
---|---
C|`unsigned char *DecodeDataBase64(const unsigned char *data, int *outputSize);`
Swift|``Serialization/decode(_:)``
## Input Handling Functions (Module: core)
### Input-related functions: keyboard
```c
bool IsKeyPressed(int key);  // Check if a key has been pressed once
bool IsKeyDown(int key);     // Check if a key is being pressed
bool IsKeyReleased(int key); // Check if a key has been released once
bool IsKeyUp(int key);       // Check if a key is NOT being pressed
void SetExitKey(int key);    // Set a custom key to exit program (default is ESC)
int GetKeyPressed(void);     // Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
int GetCharPressed(void);    // Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
```
#### IsKeyPressed
Check if a key has been pressed once
Language|Symbol
---|---
C|`bool IsKeyPressed(int key);`
Swift|``KeyboardButton/isPressed``
#### IsKeyDown
Check if a key is being pressed
Language|Symbol
---|---
C|`bool IsKeyDown(int key);`
Swift|``KeyboardButton/isDown``
#### IsKeyReleased
Check if a key has been released once
Language|Symbol
---|---
C|`bool IsKeyReleased(int key);`
Swift|``KeyboardButton/isReleased``
#### IsKeyUp
Check if a key is NOT being pressed
Language|Symbol
---|---
C|`bool IsKeyUp(int key);`
Swift|``KeyboardButton/isUp``
#### SetExitKey
Set a custom key to exit program (default is ESC)
Language|Symbol
---|---
C|`void SetExitKey(int key);`
Swift|``Application/quit(on:)``
#### GetKeyPressed
Get key pressed (keycode), call it multiple times for keys queued, returns 0 when the queue is empty
Language|Symbol
---|---
C|`int GetKeyPressed(void);`
Swift|``Keyboard/current``
#### GetCharPressed
Get char pressed (unicode), call it multiple times for chars queued, returns 0 when the queue is empty
Language|Symbol
---|---
C|`int GetCharPressed(void);`
Swift|``Keyboard/character``
### Input-related functions: gamepads
```c
bool IsGamepadAvailable(int gamepad);                  // Check if a gamepad is available
const char *GetGamepadName(int gamepad);               // Get gamepad internal name id
bool IsGamepadButtonPressed(int gamepad, int button);  // Check if a gamepad button has been pressed once
bool IsGamepadButtonDown(int gamepad, int button);     // Check if a gamepad button is being pressed
bool IsGamepadButtonReleased(int gamepad, int button); // Check if a gamepad button has been released once
bool IsGamepadButtonUp(int gamepad, int button);       // Check if a gamepad button is NOT being pressed
int GetGamepadButtonPressed(void);                     // Get the last gamepad button pressed
int GetGamepadAxisCount(int gamepad);                  // Get gamepad axis count for a gamepad
float GetGamepadAxisMovement(int gamepad, int axis);   // Get axis movement value for a gamepad axis
int SetGamepadMappings(const char *mappings);          // Set internal gamepad mappings (SDL_GameControllerDB)
```
#### IsGamepadAvailable
Check if a gamepad is available
Language|Symbol
---|---
C|`bool IsGamepadAvailable(int gamepad);`
Swift|*unimplemented*
#### GetGamepadName
Get gamepad internal name id
Language|Symbol
---|---
C|`const char *GetGamepadName(int gamepad);`
Swift|*unimplemented*
#### IsGamepadButtonPressed
Check if a gamepad button has been pressed once
Language|Symbol
---|---
C|`bool IsGamepadButtonPressed(int gamepad, int button);`
Swift|*unimplemented*
#### IsGamepadButtonDown
Check if a gamepad button is being pressed
Language|Symbol
---|---
C|`bool IsGamepadButtonDown(int gamepad, int button);`
Swift|*unimplemented*
#### IsGamepadButtonReleased
Check if a gamepad button has been released once
Language|Symbol
---|---
C|`bool IsGamepadButtonReleased(int gamepad, int button);`
Swift|*unimplemented*
#### IsGamepadButtonUp
Check if a gamepad button is NOT being pressed
Language|Symbol
---|---
C|`bool IsGamepadButtonUp(int gamepad, int button);`
Swift|*unimplemented*
#### GetGamepadButtonPressed
Get the last gamepad button pressed
Language|Symbol
---|---
C|`int GetGamepadButtonPressed(void);`
Swift|*unimplemented*
#### GetGamepadAxisCount
Get gamepad axis count for a gamepad
Language|Symbol
---|---
C|`int GetGamepadAxisCount(int gamepad);`
Swift|*unimplemented*
#### GetGamepadAxisMovement
Get axis movement value for a gamepad axis
Language|Symbol
---|---
C|`float GetGamepadAxisMovement(int gamepad, int axis);`
Swift|*unimplemented*
#### SetGamepadMappings
Set internal gamepad mappings (SDL_GameControllerDB)
Language|Symbol
---|---
C|`int SetGamepadMappings(const char *mappings);`
Swift|*unimplemented*
### Input-related functions: mouse
```c
bool IsMouseButtonPressed(int button);          // Check if a mouse button has been pressed once
bool IsMouseButtonDown(int button);             // Check if a mouse button is being pressed
bool IsMouseButtonReleased(int button);         // Check if a mouse button has been released once
bool IsMouseButtonUp(int button);               // Check if a mouse button is NOT being pressed
int GetMouseX(void);                            // Get mouse position X
int GetMouseY(void);                            // Get mouse position Y
Vector2 GetMousePosition(void);                 // Get mouse position XY
Vector2 GetMouseDelta(void);                    // Get mouse delta between frames
void SetMousePosition(int x, int y);            // Set mouse position XY
void SetMouseOffset(int offsetX, int offsetY);  // Set mouse offset
void SetMouseScale(float scaleX, float scaleY); // Set mouse scaling
float GetMouseWheelMove(void);                  // Get mouse wheel movement for X or Y, whichever is larger
Vector2 GetMouseWheelMoveV(void);               // Get mouse wheel movement for both X and Y
void SetMouseCursor(int cursor);                // Set mouse cursor
```
#### IsMouseButtonPressed
Check if a mouse button has been pressed once
Language|Symbol
---|---
C|`bool IsMouseButtonPressed(int button);`
Swift|``MouseButton/isPressed``
#### IsMouseButtonDown
Check if a mouse button is being pressed
Language|Symbol
---|---
C|`bool IsMouseButtonDown(int button);`
Swift|``MouseButton/isDown``
#### IsMouseButtonReleased
Check if a mouse button has been released once
Language|Symbol
---|---
C|`bool IsMouseButtonReleased(int button);`
Swift|``MouseButton/isReleased``
#### IsMouseButtonUp
Check if a mouse button is NOT being pressed
Language|Symbol
---|---
C|`bool IsMouseButtonUp(int button);`
Swift|``MouseButton/isUp``
#### GetMouseX
Get mouse position X
Language|Symbol
---|---
C|`int GetMouseX(void);`
Swift|``Mouse/x``
#### GetMouseY
Get mouse position Y
Language|Symbol
---|---
C|`int GetMouseY(void);`
Swift|``Mouse/y``
#### GetMousePosition
Get mouse position XY
Language|Symbol
---|---
C|`Vector2 GetMousePosition(void);`
Swift|``Mouse/position``
#### GetMouseDelta
Get mouse delta between frames
Language|Symbol
---|---
C|`Vector2 GetMouseDelta(void);`
Swift|``Mouse/delta``
#### SetMousePosition
Set mouse position XY
Language|Symbol
---|---
C|`void SetMousePosition(int x, int y);`
Swift|``Mouse/position``, ``Mouse/x`` and ``Mouse/y``
#### SetMouseOffset
Set mouse offset
Language|Symbol
---|---
C|`void SetMouseOffset(int offsetX, int offsetY);`
Swift|``Mouse/offset(by:)``
#### SetMouseScale
Set mouse scaling
Language|Symbol
---|---
C|`void SetMouseScale(float scaleX, float scaleY);`
Swift|``Mouse/scale(by:)``
#### GetMouseWheelMove
Get mouse wheel movement for X or Y, whichever is larger
Language|Symbol
---|---
C|`float GetMouseWheelMove(void);`
Swift|``Mouse/wheel``
#### GetMouseWheelMoveV
Get mouse wheel movement for both X and Y
Language|Symbol
---|---
C|`Vector2 GetMouseWheelMoveV(void);`
Swift|*unimplemented*
#### SetMouseCursor
Set mouse cursor
Language|Symbol
---|---
C|`void SetMouseCursor(int cursor);`
Swift|``Cursor/style(to:)``
### Input-related functions: touch
```c
int GetTouchX(void);                         // Get touch position X for touch point 0 (relative to screen size)
int GetTouchY(void);                         // Get touch position Y for touch point 0 (relative to screen size)
Vector2 GetTouchPosition(int index);         // Get touch position XY for a touch point index (relative to screen size)
int GetTouchPointId(int index);              // Get touch point identifier for given index
int GetTouchPointCount(void);                // Get number of touch points
void SetGesturesEnabled(unsigned int flags); // Enable a set of gestures using flags
bool IsGestureDetected(int gesture);         // Check if a gesture have been detected
int GetGestureDetected(void);                // Get latest detected gesture
float GetGestureHoldDuration(void);          // Get gesture hold time in milliseconds
Vector2 GetGestureDragVector(void);          // Get gesture drag vector
float GetGestureDragAngle(void);             // Get gesture drag angle
Vector2 GetGesturePinchVector(void);         // Get gesture pinch delta
float GetGesturePinchAngle(void);            // Get gesture pinch angle
void UpdateCamera(Camera *camera, int mode); // Update camera position for selected mode
```
#### GetTouchX
Get touch position X for touch point 0 (relative to screen size)
Language|Symbol
---|---
C|`int GetTouchX(void);`
Swift|*unimplemented*
#### GetTouchY
Get touch position Y for touch point 0 (relative to screen size)
Language|Symbol
---|---
C|`int GetTouchY(void);`
Swift|*unimplemented*
#### GetTouchPosition
Get touch position XY for a touch point index (relative to screen size)
Language|Symbol
---|---
C|`Vector2 GetTouchPosition(int index);`
Swift|*unimplemented*
#### GetTouchPointId
Get touch point identifier for given index
Language|Symbol
---|---
C|`int GetTouchPointId(int index);`
Swift|*unimplemented*
#### GetTouchPointCount
Get number of touch points
Language|Symbol
---|---
C|`int GetTouchPointCount(void);`
Swift|*unimplemented*
## Gestures and Touch Handling Functions (Module: rgestures)
#### SetGesturesEnabled
Enable a set of gestures using flags
Language|Symbol
---|---
C|`void SetGesturesEnabled(unsigned int flags);`
Swift|*unimplemented*
#### IsGestureDetected
Check if a gesture have been detected
Language|Symbol
---|---
C|`bool IsGestureDetected(int gesture);`
Swift|*unimplemented*
#### GetGestureDetected
Get latest detected gesture
Language|Symbol
---|---
C|`int GetGestureDetected(void);`
Swift|*unimplemented*
#### GetGestureHoldDuration
Get gesture hold time in milliseconds
Language|Symbol
---|---
C|`float GetGestureHoldDuration(void);`
Swift|*unimplemented*
#### GetGestureDragVector
Get gesture drag vector
Language|Symbol
---|---
C|`Vector2 GetGestureDragVector(void);`
Swift|*unimplemented*
#### GetGestureDragAngle
Get gesture drag angle
Language|Symbol
---|---
C|`float GetGestureDragAngle(void);`
Swift|*unimplemented*
#### GetGesturePinchVector
Get gesture pinch delta
Language|Symbol
---|---
C|`Vector2 GetGesturePinchVector(void);`
Swift|*unimplemented*
#### GetGesturePinchAngle
Get gesture pinch angle
Language|Symbol
---|---
C|`float GetGesturePinchAngle(void);`
Swift|*unimplemented*
## Camera System Functions (Module: rcamera)
#### UpdateCamera
Update camera position for selected mode
Language|Symbol
---|---
C|`void UpdateCamera(Camera *camera, int mode);`
Swift|*unimplemented*
## Basic Shapes Drawing Functions (Module: shapes)
> Note: It can be useful when using basic shapes and one single font, a font char white rectangle would allow drawing everything in a single draw call

#### SetShapesTexture
Set texture and rectangle to be used on shapes drawing
Language|Symbol
---|---
C|`void SetShapesTexture(Texture2D texture, Rectangle source);`
Swift|*unimplemented*
### Basic shapes drawing functions
```c
void DrawPixel(int posX, int posY, Color color);                                                                                       // Draw a pixel
void DrawPixelV(Vector2 position, Color color);                                                                                        // Draw a pixel 
void DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color color);                                                    // Draw a line
void DrawLineV(Vector2 startPos, Vector2 endPos, Color color);                                                                         // Draw a line 
void DrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color);                                                           // Draw a line defining thickness
void DrawLineBezier(Vector2 startPos, Vector2 endPos, float thick, Color color);                                                       // Draw a line using cubic-bezier curves in-out
void DrawLineBezierQuad(Vector2 startPos, Vector2 endPos, Vector2 controlPos, float thick, Color color);                               // Draw line using quadratic bezier curves with a control point
void DrawLineBezierCubic(Vector2 startPos, Vector2 endPos, Vector2 startControlPos, Vector2 endControlPos, float thick, Color color);  // Draw line using cubic bezier curves with 2 control points
void DrawLineStrip(Vector2 *points, int pointCount, Color color);                                                                      // Draw lines sequence
void DrawCircle(int centerX, int centerY, float radius, Color color);                                                                  // Draw a color-filled circle
void DrawCircleSector(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);                      // Draw a piece of a circle
void DrawCircleSectorLines(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);                 // Draw circle sector outline
void DrawCircleGradient(int centerX, int centerY, float radius, Color color1, Color color2);                                           // Draw a gradient-filled circle
void DrawCircleV(Vector2 center, float radius, Color color);                                                                           // Draw a color-filled circle 
void DrawCircleLines(int centerX, int centerY, float radius, Color color);                                                             // Draw circle outline
void DrawEllipse(int centerX, int centerY, float radiusH, float radiusV, Color color);                                                 // Draw ellipse
void DrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, Color color);                                            // Draw ellipse outline
void DrawRing(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);      // Draw ring
void DrawRingLines(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color); // Draw ring outline
void DrawRectangle(int posX, int posY, int width, int height, Color color);                                                            // Draw a color-filled rectangle
void DrawRectangleV(Vector2 position, Vector2 size, Color color);                                                                      // Draw a color-filled rectangle 
void DrawRectangleRec(Rectangle rec, Color color);                                                                                     // Draw a color-filled rectangle
void DrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color);                                                     // Draw a color-filled rectangle with pro parameters
void DrawRectangleGradientV(int posX, int posY, int width, int height, Color color1, Color                                             // Draw a vertical-gradient-filled rectangle
void DrawRectangleGradientH(int posX, int posY, int width, int height, Color color1, Color                                             // Draw a horizontal-gradient-filled rectangle
void DrawRectangleGradientEx(Rectangle rec, Color col1, Color col2, Color col3, Color col4);                                           // Draw a gradient-filled rectangle with custom vertex colors
void DrawRectangleLines(int posX, int posY, int width, int height, Color color);                                                       // Draw rectangle outline
void DrawRectangleLinesEx(Rectangle rec, float lineThick, Color color);                                                                // Draw rectangle outline with extended parameters
void DrawRectangleRounded(Rectangle rec, float roundness, int segments, Color color);                                                  // Draw rectangle with rounded edges
void DrawRectangleRoundedLines(Rectangle rec, float roundness, int segments, float lineThick, Color color);                            // Draw rectangle with rounded edges outline
void DrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color);                                                                    // Draw a color-filled triangle (vertex in counter-clockwise order!)
void DrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color);                                                               // Draw triangle outline (vertex in counter-clockwise order!)
void DrawTriangleFan(Vector2 *points, int pointCount, Color color);                                                                    // Draw a triangle fan defined by points (first vertex is the center)
void DrawTriangleStrip(Vector2 *points, int pointCount, Color color);                                                                  // Draw a triangle strip defined by points
void DrawPoly(Vector2 center, int sides, float radius, float rotation, Color color);                                                   // Draw a regular polygon 
void DrawPolyLines(Vector2 center, int sides, float radius, float rotation, Color color);                                              // Draw a polygon outline of n sides
void DrawPolyLinesEx(Vector2 center, int sides, float radius, float rotation, float lineThick, Color color);                           // Draw a polygon outline of n sides with extended parameters
```
#### DrawPixel
Draw a pixel
Language|Symbol
---|---
C|`void DrawPixel(int posX, int posY, Color color);`
Swift|``Renderer2D/pixel(at:_:_:)``
#### DrawPixelV
Draw a pixel 
Language|Symbol
---|---
C|`void DrawPixelV(Vector2 position, Color color);`
Swift|``Renderer2D/pixel(at:_:)``
#### DrawLine
Draw a line
Language|Symbol
---|---
C|`void DrawLine(int startPosX, int startPosY, int endPosX, int endPosY, Color color);`
Swift|``Renderer2D/line(from:_:to:_:color:)``
#### DrawLineV
Draw a line 
Language|Symbol
---|---
C|`void DrawLineV(Vector2 startPos, Vector2 endPos, Color color);`
Swift|``Renderer2D/line(from:to:color:)``
#### DrawLineEx
Draw a line defining thickness
Language|Symbol
---|---
C|`void DrawLineEx(Vector2 startPos, Vector2 endPos, float thick, Color color);`
Swift|``Renderer2D/line(from:to:thickness:color:)`` and ``Renderer2D/line(from:_:to:_:thickness:color:)``
#### DrawLineBezier
Draw a line using cubic-bezier curves in-out
Language|Symbol
---|---
C|`void DrawLineBezier(Vector2 startPos, Vector2 endPos, float thick, Color color);`
Swift|``Renderer2D/bezier(from:to:thickness:color:)`` and ``Renderer2D/bezier(from:_:to:_:thickness:color:)``
#### DrawLineBezierQuad
Draw line using quadratic bezier curves with a control point
Language|Symbol
---|---
C|`void DrawLineBezierQuad(Vector2 startPos, Vector2 endPos, Vector2 controlPos, float thick, Color color);`
Swift|``Renderer2D/bezier(from:to:control:thickness:color:)`` and ``Renderer2D/bezier(from:_:to:_:control:_:thickness:color:)``
#### DrawLineBezierCubic
Draw line using cubic bezier curves with 2 control points
Language|Symbol
---|---
C|`void DrawLineBezierCubic(Vector2 startPos, Vector2 endPos, Vector2 startControlPos, Vector2 endControlPos, float thick, Color color);`
Swift|*unimplemented*
#### DrawLineStrip
Draw lines sequence
Language|Symbol
---|---
C|`void DrawLineStrip(Vector2 *points, int pointCount, Color color);`
Swift|``Renderer2D/lines(_:color:)``
#### DrawCircle
Draw a color-filled circle
Language|Symbol
---|---
C|`void DrawCircle(int centerX, int centerY, float radius, Color color);`
Swift|``Renderer2D/circle(at:_:radius:color:)``
#### DrawCircleSector
Draw a piece of a circle
Language|Symbol
---|---
C|`void DrawCircleSector(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);`
Swift|``Renderer2D/sector(at:radius:from:to:segments:color:)`` and ``Renderer2D/sector(at:_:radius:from:to:segments:color:)``
#### DrawCircleSectorLines
Draw circle sector outline
Language|Symbol
---|---
C|`void DrawCircleSectorLines(Vector2 center, float radius, float startAngle, float endAngle, int segments, Color color);`
Swift|``OutlineRenderer2D/sector(at:radius:from:to:segments:color:)`` and ``OutlineRenderer2D/sector(at:_:radius:from:to:segments:color:)``
#### DrawCircleGradient
Draw a gradient-filled circle
Language|Symbol
---|---
C|`void DrawCircleGradient(int centerX, int centerY, float radius, Color color1, Color color2);`
Swift|``Renderer2D/circle(at:_:radius:gradient:_:)``
#### DrawCircleV
Draw a color-filled circle 
Language|Symbol
---|---
C|`void DrawCircleV(Vector2 center, float radius, Color color);`
Swift|``Renderer2D/circle(at:radius:color:)``
#### DrawCircleLines
Draw circle outline
Language|Symbol
---|---
C|`void DrawCircleLines(int centerX, int centerY, float radius, Color color);`
Swift|``OutlineRenderer2D/circle(at:_:radius:color:)``
#### DrawEllipse
Draw ellipse
Language|Symbol
---|---
C|`void DrawEllipse(int centerX, int centerY, float radiusH, float radiusV, Color color);`
Swift|``Renderer2D/ellipse(at:_:radius:_:color:)``
#### DrawEllipseLines
Draw ellipse outline
Language|Symbol
---|---
C|`void DrawEllipseLines(int centerX, int centerY, float radiusH, float radiusV, Color color);`
Swift|``OutlineRenderer2D/ellipse(at:_:radius:_:color:)``
#### DrawRing
Draw ring
Language|Symbol
---|---
C|`void DrawRing(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);`
Swift|``Renderer2D/ring(at:inner:outer:segments:from:to:color:)`` and ``Renderer2D/ring(at:_:inner:outer:segments:from:to:color:)``
#### DrawRingLines
Draw ring outline
Language|Symbol
---|---
C|`void DrawRingLines(Vector2 center, float innerRadius, float outerRadius, float startAngle, float endAngle, int segments, Color color);`
Swift|``OutlineRenderer2D/ring(at:inner:outer:segments:from:to:color:)`` and ``OutlineRenderer2D/ring(at:_:inner:outer:segments:from:to:color:)``
#### DrawRectangle
Draw a color-filled rectangle
Language|Symbol
---|---
C|`void DrawRectangle(int posX, int posY, int width, int height, Color color);`
Swift|``Renderer2D/rectangle(at:_:size:_:color:)``
#### DrawRectangleV
Draw a color-filled rectangle 
Language|Symbol
---|---
C|`void DrawRectangleV(Vector2 position, Vector2 size, Color color);`
Swift|``Renderer2D/rectangle(at:size:color:)``
#### DrawRectangleRec
Draw a color-filled rectangle
Language|Symbol
---|---
C|`void DrawRectangleRec(Rectangle rec, Color color);`
Swift|``Renderer2D/rectangle(_:color:)``
#### DrawRectanglePro
Draw a color-filled rectangle with pro parameters
Language|Symbol
---|---
C|`void DrawRectanglePro(Rectangle rec, Vector2 origin, float rotation, Color color);`
Swift|*unimplemented*
#### DrawRectangleGradientV
Draw a vertical-gradient-filled rectangle
Language|Symbol
---|---
C|`void DrawRectangleGradientV(int posX, int posY, int width, int height, Color color1, Color`
Swift|``Renderer2D/rectangle(at:_:size:_:gradientV:_:)``
#### DrawRectangleGradientH
Draw a horizontal-gradient-filled rectangle
Language|Symbol
---|---
C|`void DrawRectangleGradientH(int posX, int posY, int width, int height, Color color1, Color`
Swift|``Renderer2D/rectangle(at:_:size:_:gradientH:_:)``
#### DrawRectangleGradientEx
Draw a gradient-filled rectangle with custom vertex colors
Language|Symbol
---|---
C|`void DrawRectangleGradientEx(Rectangle rec, Color col1, Color col2, Color col3, Color col4);`
Swift|``Renderer2D/rectangle(_:gradient:_:_:_:)``
#### DrawRectangleLines
Draw rectangle outline
Language|Symbol
---|---
C|`void DrawRectangleLines(int posX, int posY, int width, int height, Color color);`
Swift|``OutlineRenderer2D/rectangle(at:_:size:_:color:)``
#### DrawRectangleLinesEx
Draw rectangle outline with extended parameters
Language|Symbol
---|---
C|`void DrawRectangleLinesEx(Rectangle rec, float lineThick, Color color);`
Swift|``OutlineRenderer2D/rectangle(at:_:size:_:thickness:color:)``
#### DrawRectangleRounded
Draw rectangle with rounded edges
Language|Symbol
---|---
C|`void DrawRectangleRounded(Rectangle rec, float roundness, int segments, Color color);`
Swift|``Renderer2D/roundedRectangle(_:color:)``
#### DrawRectangleRoundedLines
Draw rectangle with rounded edges outline
Language|Symbol
---|---
C|`void DrawRectangleRoundedLines(Rectangle rec, float roundness, int segments, float lineThick, Color color);`
Swift|*unimplemented*
#### DrawTriangle
Draw a color-filled triangle (vertex in counter-clockwise order!)
Language|Symbol
---|---
C|`void DrawTriangle(Vector2 v1, Vector2 v2, Vector2 v3, Color color);`
Swift|``Renderer2D/triangle(_:_:_:color:)``
#### DrawTriangleLines
Draw triangle outline (vertex in counter-clockwise order!)
Language|Symbol
---|---
C|`void DrawTriangleLines(Vector2 v1, Vector2 v2, Vector2 v3, Color color);`
Swift|``OutlineRenderer2D/triangle(_:_:_:color:)`` and ``Renderer2D/triangle(_:_:_:color:)``
#### DrawTriangleFan
Draw a triangle fan defined by points (first vertex is the center)
Language|Symbol
---|---
C|`void DrawTriangleFan(Vector2 *points, int pointCount, Color color);`
Swift|*unimplemented*
#### DrawTriangleStrip
Draw a triangle strip defined by points
Language|Symbol
---|---
C|`void DrawTriangleStrip(Vector2 *points, int pointCount, Color color);`
Swift|*unimplemented*
#### DrawPoly
Draw a regular polygon 
Language|Symbol
---|---
C|`void DrawPoly(Vector2 center, int sides, float radius, float rotation, Color color);`
Swift|``Renderer2D/polygon(at:sides:radius:rotation:color:)``
#### DrawPolyLines
Draw a polygon outline of n sides
Language|Symbol
---|---
C|`void DrawPolyLines(Vector2 center, int sides, float radius, float rotation, Color color);`
Swift|``OutlineRenderer2D/polygon(at:sides:radius:rotation:color:)``
#### DrawPolyLinesEx
Draw a polygon outline of n sides with extended parameters
Language|Symbol
---|---
C|`void DrawPolyLinesEx(Vector2 center, int sides, float radius, float rotation, float lineThick, Color color);`
Swift|*unimplemented*
### Basic shapes collision detection functions
```c
bool CheckCollisionRecs(Rectangle rec1, Rectangle rec2);                                                                   // Check collision between two rectangles
bool CheckCollisionCircles(Vector2 center1, float radius1, Vector2 center2, float radius2);                                // Check collision between two circles
bool CheckCollisionCircleRec(Vector2 center, float radius, Rectangle rec);                                                 // Check collision between circle and rectangle
bool CheckCollisionPointRec(Vector2 point, Rectangle rec);                                                                 // Check if point is inside rectangle
bool CheckCollisionPointCircle(Vector2 point, Vector2 center, float radius);                                               // Check if point is inside circle
bool CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3);                                       // Check if point is inside a triangle
bool CheckCollisionPointPoly(Vector2 point, Vector2 *points, int pointCount);                                              // Check if point is within a polygon described by array of vertices
bool CheckCollisionLines(Vector2 startPos1, Vector2 endPos1, Vector2 startPos2, Vector2 endPos2, Vector2 *collisionPoint); // Check the collision between two lines defined by two points each, returns collision point by reference
bool CheckCollisionPointLine(Vector2 point, Vector2 p1, Vector2 p2, int threshold);                                        // Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
Rectangle GetCollisionRec(Rectangle rec1, Rectangle rec2);                                                                 // Get collision rectangle for two rectangles collision
```
#### CheckCollisionRecs
Check collision between two rectangles
Language|Symbol
---|---
C|`bool CheckCollisionRecs(Rectangle rec1, Rectangle rec2);`
Swift|``Rectangle/collided(with:)-3syut``
#### CheckCollisionCircles
Check collision between two circles
Language|Symbol
---|---
C|`bool CheckCollisionCircles(Vector2 center1, float radius1, Vector2 center2, float radius2);`
Swift|``Circle/collided(with:)-4c6tq``
#### CheckCollisionCircleRec
Check collision between circle and rectangle
Language|Symbol
---|---
C|`bool CheckCollisionCircleRec(Vector2 center, float radius, Rectangle rec);`
Swift|``Rectangle/collided(with:)-1ia3k`` and ``Circle/collided(with:)-8wn3p``
#### CheckCollisionPointRec
Check if point is inside rectangle
Language|Symbol
---|---
C|`bool CheckCollisionPointRec(Vector2 point, Rectangle rec);`
Swift|``Rectangle/contains(_:)``
#### CheckCollisionPointCircle
Check if point is inside circle
Language|Symbol
---|---
C|`bool CheckCollisionPointCircle(Vector2 point, Vector2 center, float radius);`
Swift|``Rectangle/contains(_:)``
#### CheckCollisionPointTriangle
Check if point is inside a triangle
Language|Symbol
---|---
C|`bool CheckCollisionPointTriangle(Vector2 point, Vector2 p1, Vector2 p2, Vector2 p3);`
Swift|``Triangle/contains(_:)``
#### CheckCollisionPointPoly
Check if point is within a polygon described by array of vertices
Language|Symbol
---|---
C|`bool CheckCollisionPointPoly(Vector2 point, Vector2 *points, int pointCount);`
Swift|*unimplemented*
#### CheckCollisionLines
Check the collision between two lines defined by two points each, returns collision point by reference
Language|Symbol
---|---
C|`bool CheckCollisionLines(Vector2 startPos1, Vector2 endPos1, Vector2 startPos2, Vector2 endPos2, Vector2 *collisionPoint);`
Swift|``Line/collision(with:)``
#### CheckCollisionPointLine
Check if point belongs to line created between two points [p1] and [p2] with defined margin in pixels [threshold]
Language|Symbol
---|---
C|`bool CheckCollisionPointLine(Vector2 point, Vector2 p1, Vector2 p2, int threshold);`
Swift|*unimplemented*
#### GetCollisionRec
Get collision rectangle for two rectangles collision
Language|Symbol
---|---
C|`Rectangle GetCollisionRec(Rectangle rec1, Rectangle rec2);`
Swift|``Rectangle/collision(with:)``
## Texture Loading and Drawing Functions (Module: textures)
### Image loading functions
```c
Image LoadImage(const char *fileName);                                                        // Load image from file into CPU memory (RAM)
Image LoadImageRaw(const char *fileName, int width, int height, int format, int headerSize);  // Load image from RAW file data
Image LoadImageAnim(const char *fileName, int *frames);                                       // Load image sequence from file (frames appended to image.data)
Image LoadImageFromMemory(const char *fileType, const unsigned char *fileData, int dataSize); // Load image from memory buffer, fileType refers to extension: i.e. '.png'
Image LoadImageFromTexture(Texture2D texture);                                                // Load image from GPU texture data
Image LoadImageFromScreen(void);                                                              // Load image from screen buffer and (screenshot)
bool IsImageReady(Image image);                                                               // Check if an image is ready
void UnloadImage(Image image);                                                                // Unload image from CPU memory (RAM)
bool ExportImage(Image image, const char *fileName);                                          // Export image data to file, returns true on success
bool ExportImageAsCode(Image image, const char *fileName);                                    // Export image as code file defining an array of bytes, returns true on success
```
> Note: These functions do not require GPU access

#### LoadImage
Load image from file into CPU memory (RAM)
Language|Symbol
---|---
C|`Image LoadImage(const char *fileName);`
Swift|``File/loadAsImage()``
#### LoadImageRaw
Load image from RAW file data
Language|Symbol
---|---
C|`Image LoadImageRaw(const char *fileName, int width, int height, int format, int headerSize);`
Swift|``File/loadAsRawImage(size:by:format:offset:)``
#### LoadImageAnim
Load image sequence from file (frames appended to image.data)
Language|Symbol
---|---
C|`Image LoadImageAnim(const char *fileName, int *frames);`
Swift|``File/loadAsAnimation(frames:)``
#### LoadImageFromMemory
Load image from memory buffer, fileType refers to extension: i.e. '.png'
Language|Symbol
---|---
C|`Image LoadImageFromMemory(const char *fileType, const unsigned char *fileData, int dataSize);`
Swift|
#### LoadImageFromTexture
Load image from GPU texture data
Language|Symbol
---|---
C|`Image LoadImageFromTexture(Texture2D texture);`
Swift|``Texture/convertToImage()``
#### LoadImageFromScreen
Load image from screen buffer and (screenshot)
Language|Symbol
---|---
C|`Image LoadImageFromScreen(void);`
Swift|``Screen/screenshot()``
#### IsImageReady
Check if an image is ready
Language|Symbol
---|---
C|`bool IsImageReady(Image image);`
Swift|*unimplemented*
#### UnloadImage
Unload image from CPU memory (RAM)
Language|Symbol
---|---
C|`void UnloadImage(Image image);`
Swift|
#### ExportImage
Export image data to file, returns true on success
Language|Symbol
---|---
C|`bool ExportImage(Image image, const char *fileName);`
Swift|``File/write(image:)``
#### ExportImageAsCode
Export image as code file defining an array of bytes, returns true on success
Language|Symbol
---|---
C|`bool ExportImageAsCode(Image image, const char *fileName);`
Swift|
### Image generation functions
```c
Image GenImageColor(int width, int height, Color color);                                        // Generate image: plain color
Image GenImageGradientV(int width, int height, Color top, Color bottom);                        // Generate image: vertical gradient
Image GenImageGradientH(int width, int height, Color left, Color right);                        // Generate image: horizontal gradient
Image GenImageGradientRadial(int width, int height, float density, Color inner, Color outer);   // Generate image: radial gradient
Image GenImageChecked(int width, int height, int checksX, int checksY, Color col1, Color col2); // Generate image: checked
Image GenImageWhiteNoise(int width, int height, float factor);                                  // Generate image: white noise
Image GenImagePerlinNoise(int width, int height, int offsetX, int offsetY, float scale);        // Generate image: perlin noise
Image GenImageCellular(int width, int height, int tileSize);                                    // Generate image: cellular algorithm, bigger tileSize means bigger cells
Image GenImageText(int width, int height, const char *text);                                    // Generate image: grayscale image from text data
```
#### GenImageColor
Generate image: plain color
Language|Symbol
---|---
C|`Image GenImageColor(int width, int height, Color color);`
Swift|``BuiltinImage/color(size:by:of:)``
#### GenImageGradientV
Generate image: vertical gradient
Language|Symbol
---|---
C|`Image GenImageGradientV(int width, int height, Color top, Color bottom);`
Swift|``BuiltinImage/gradientV(size:by:from:to:)``
#### GenImageGradientH
Generate image: horizontal gradient
Language|Symbol
---|---
C|`Image GenImageGradientH(int width, int height, Color left, Color right);`
Swift|``BuiltinImage/gradientH(size:by:from:to:)``
#### GenImageGradientRadial
Generate image: radial gradient
Language|Symbol
---|---
C|`Image GenImageGradientRadial(int width, int height, float density, Color inner, Color outer);`
Swift|``BuiltinImage/gradientRadial(size:by:density:from:to:)``
#### GenImageChecked
Generate image: checked
Language|Symbol
---|---
C|`Image GenImageChecked(int width, int height, int checksX, int checksY, Color col1, Color col2);`
Swift|``BuiltinImage/checked(size:by:tiles:_:colors:_:)``
#### GenImageWhiteNoise
Generate image: white noise
Language|Symbol
---|---
C|`Image GenImageWhiteNoise(int width, int height, float factor);`
Swift|``BuiltinImage/whiteNoise(size:by:factor:)``
#### GenImagePerlinNoise
Generate image: perlin noise
Language|Symbol
---|---
C|`Image GenImagePerlinNoise(int width, int height, int offsetX, int offsetY, float scale);`
Swift|*unimplemented*
#### GenImageCellular
Generate image: cellular algorithm, bigger tileSize means bigger cells
Language|Symbol
---|---
C|`Image GenImageCellular(int width, int height, int tileSize);`
Swift|``BuiltinImage/cellular(size:by:cell:)``
#### GenImageText
Generate image: grayscale image from text data
Language|Symbol
---|---
C|`Image GenImageText(int width, int height, const char *text);`
Swift|*unimplemented*
### Image manipulation functions
```c
Image ImageCopy(Image image);                                                                            // Create an image duplicate (useful for transformations)
Image ImageFromImage(Image image, Rectangle rec);                                                        // Create an image from another image piece
Image ImageText(const char *text, int fontSize, Color color);                                            // Create an image from text (default font)
Image ImageTextEx(Font font, const char *text, float fontSize, float spacing, Color tint);               // Create an image from text (custom sprite font)
void ImageFormat(Image *image, int newFormat);                                                           // Convert image data to desired format
void ImageToPOT(Image *image, Color fill);                                                               // Convert image to POT (power-of-two)
void ImageCrop(Image *image, Rectangle crop);                                                            // Crop an image to a defined rectangle
void ImageAlphaCrop(Image *image, float threshold);                                                      // Crop image depending on alpha value
void ImageAlphaClear(Image *image, Color color, float threshold);                                        // Clear alpha channel to desired color
void ImageAlphaMask(Image *image, Image alphaMask);                                                      // Apply alpha mask to image
void ImageAlphaPremultiply(Image *image);                                                                // Premultiply alpha channel
void ImageBlurGaussian(Image *image, int blurSize);                                                      // Apply Gaussian blur using a box blur approximation
void ImageResize(Image *image, int newWidth, int newHeight);                                             // Resize image (Bicubic scaling algorithm)
void ImageResizeNN(Image *image, int newWidth,int newHeight);                                            // Resize image (Nearest-Neighbor scaling algorithm)
void ImageResizeCanvas(Image *image, int newWidth, int newHeight, int offsetX, int offsetY, Color fill); // Resize canvas and fill with color
void ImageMipmaps(Image *image);                                                                         // Compute all mipmap levels for a provided image
void ImageDither(Image *image, int rBpp, int gBpp, int bBpp, int aBpp);                                  // Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
void ImageFlipVertical(Image *image);                                                                    // Flip image vertically
void ImageFlipHorizontal(Image *image);                                                                  // Flip image horizontally
void ImageRotateCW(Image *image);                                                                        // Rotate image clockwise 90deg
void ImageRotateCCW(Image *image);                                                                       // Rotate image counter-clockwise 90deg
void ImageColorTint(Image *image, Color color);                                                          // Modify image color: tint
void ImageColorInvert(Image *image);                                                                     // Modify image color: invert
void ImageColorGrayscale(Image *image);                                                                  // Modify image color: grayscale
void ImageColorContrast(Image *image, float contrast);                                                   // Modify image color: contrast (-100 to 100)
void ImageColorBrightness(Image *image, int brightness);                                                 // Modify image color: brightness (-255 to 255)
void ImageColorReplace(Image *image, Color color, Color replace);                                        // Modify image color: replace color
Color *LoadImageColors(Image image);                                                                     // Load color data from image as a Color array (RGBA - 32bit)
Color *LoadImagePalette(Image image, int maxPaletteSize, int *colorCount);                               // Load colors palette from image as a Color array (RGBA - 32bit)
void UnloadImageColors(Color *colors);                                                                   // Unload color data loaded with LoadImageColors()
void UnloadImagePalette(Color *colors);                                                                  // Unload colors palette loaded with LoadImagePalette()
Rectangle GetImageAlphaBorder(Image image, float threshold);                                             // Get image alpha border rectangle
Color GetImageColor(Image image, int x, int y);                                                          // Get image pixel color at (x, y) position
```
#### ImageCopy
Create an image duplicate (useful for transformations)
Language|Symbol
---|---
C|`Image ImageCopy(Image image);`
Swift|*unimplemented*
#### ImageFromImage
Create an image from another image piece
Language|Symbol
---|---
C|`Image ImageFromImage(Image image, Rectangle rec);`
Swift|*unimplemented*
#### ImageText
Create an image from text (default font)
Language|Symbol
---|---
C|`Image ImageText(const char *text, int fontSize, Color color);`
Swift|*unimplemented*
#### ImageTextEx
Create an image from text (custom sprite font)
Language|Symbol
---|---
C|`Image ImageTextEx(Font font, const char *text, float fontSize, float spacing, Color tint);`
Swift|*unimplemented*
#### ImageFormat
Convert image data to desired format
Language|Symbol
---|---
C|`void ImageFormat(Image *image, int newFormat);`
Swift|*unimplemented*
#### ImageToPOT
Convert image to POT (power-of-two)
Language|Symbol
---|---
C|`void ImageToPOT(Image *image, Color fill);`
Swift|*unimplemented*
#### ImageCrop
Crop an image to a defined rectangle
Language|Symbol
---|---
C|`void ImageCrop(Image *image, Rectangle crop);`
Swift|*unimplemented*
#### ImageAlphaCrop
Crop image depending on alpha value
Language|Symbol
---|---
C|`void ImageAlphaCrop(Image *image, float threshold);`
Swift|*unimplemented*
#### ImageAlphaClear
Clear alpha channel to desired color
Language|Symbol
---|---
C|`void ImageAlphaClear(Image *image, Color color, float threshold);`
Swift|*unimplemented*
#### ImageAlphaMask
Apply alpha mask to image
Language|Symbol
---|---
C|`void ImageAlphaMask(Image *image, Image alphaMask);`
Swift|*unimplemented*
#### ImageAlphaPremultiply
Premultiply alpha channel
Language|Symbol
---|---
C|`void ImageAlphaPremultiply(Image *image);`
Swift|*unimplemented*
#### ImageBlurGaussian
Apply Gaussian blur using a box blur approximation
Language|Symbol
---|---
C|`void ImageBlurGaussian(Image *image, int blurSize);`
Swift|*unimplemented*
#### ImageResize
Resize image (Bicubic scaling algorithm)
Language|Symbol
---|---
C|`void ImageResize(Image *image, int newWidth, int newHeight);`
Swift|*unimplemented*
#### ImageResizeNN
Resize image (Nearest-Neighbor scaling algorithm)
Language|Symbol
---|---
C|`void ImageResizeNN(Image *image, int newWidth,int newHeight);`
Swift|*unimplemented*
#### ImageResizeCanvas
Resize canvas and fill with color
Language|Symbol
---|---
C|`void ImageResizeCanvas(Image *image, int newWidth, int newHeight, int offsetX, int offsetY, Color fill);`
Swift|*unimplemented*
#### ImageMipmaps
Compute all mipmap levels for a provided image
Language|Symbol
---|---
C|`void ImageMipmaps(Image *image);`
Swift|*unimplemented*
#### ImageDither
Dither image data to 16bpp or lower (Floyd-Steinberg dithering)
Language|Symbol
---|---
C|`void ImageDither(Image *image, int rBpp, int gBpp, int bBpp, int aBpp);`
Swift|*unimplemented*
#### ImageFlipVertical
Flip image vertically
Language|Symbol
---|---
C|`void ImageFlipVertical(Image *image);`
Swift|*unimplemented*
#### ImageFlipHorizontal
Flip image horizontally
Language|Symbol
---|---
C|`void ImageFlipHorizontal(Image *image);`
Swift|*unimplemented*
#### ImageRotateCW
Rotate image clockwise 90deg
Language|Symbol
---|---
C|`void ImageRotateCW(Image *image);`
Swift|*unimplemented*
#### ImageRotateCCW
Rotate image counter-clockwise 90deg
Language|Symbol
---|---
C|`void ImageRotateCCW(Image *image);`
Swift|*unimplemented*
#### ImageColorTint
Modify image color: tint
Language|Symbol
---|---
C|`void ImageColorTint(Image *image, Color color);`
Swift|*unimplemented*
#### ImageColorInvert
Modify image color: invert
Language|Symbol
---|---
C|`void ImageColorInvert(Image *image);`
Swift|*unimplemented*
#### ImageColorGrayscale
Modify image color: grayscale
Language|Symbol
---|---
C|`void ImageColorGrayscale(Image *image);`
Swift|*unimplemented*
#### ImageColorContrast
Modify image color: contrast (-100 to 100)
Language|Symbol
---|---
C|`void ImageColorContrast(Image *image, float contrast);`
Swift|*unimplemented*
#### ImageColorBrightness
Modify image color: brightness (-255 to 255)
Language|Symbol
---|---
C|`void ImageColorBrightness(Image *image, int brightness);`
Swift|*unimplemented*
#### ImageColorReplace
Modify image color: replace color
Language|Symbol
---|---
C|`void ImageColorReplace(Image *image, Color color, Color replace);`
Swift|*unimplemented*
#### LoadImageColors
Load color data from image as a Color array (RGBA - 32bit)
Language|Symbol
---|---
C|`Color *LoadImageColors(Image image);`
Swift|*unimplemented*
#### LoadImagePalette
Load colors palette from image as a Color array (RGBA - 32bit)
Language|Symbol
---|---
C|`Color *LoadImagePalette(Image image, int maxPaletteSize, int *colorCount);`
Swift|*unimplemented*
#### UnloadImageColors
Unload color data loaded with LoadImageColors()
Language|Symbol
---|---
C|`void UnloadImageColors(Color *colors);`
Swift|*unimplemented*
#### UnloadImagePalette
Unload colors palette loaded with LoadImagePalette()
Language|Symbol
---|---
C|`void UnloadImagePalette(Color *colors);`
Swift|*unimplemented*
#### GetImageAlphaBorder
Get image alpha border rectangle
Language|Symbol
---|---
C|`Rectangle GetImageAlphaBorder(Image image, float threshold);`
Swift|*unimplemented*
#### GetImageColor
Get image pixel color at (x, y) position
Language|Symbol
---|---
C|`Color GetImageColor(Image image, int x, int y);`
Swift|*unimplemented*
### Image drawing functions
```c
void ImageClearBackground(Image *dst, Color color);                                                                         // Clear image background with given color
void ImageDrawPixel(Image *dst, int posX, int posY, Color color);                                                           // Draw pixel within an image
void ImageDrawPixelV(Image *dst, Vector2 position, Color color);                                                            // Draw pixel within an image 
void ImageDrawLine(Image *dst, int startPosX, int startPosY, int endPosX, int endPosY, Color color);                        // Draw line within an image
void ImageDrawLineV(Image *dst, Vector2 start, Vector2 end, Color color);                                                   // Draw line within an image 
void ImageDrawCircle(Image *dst, int centerX, int centerY, int radius, Color color);                                        // Draw a filled circle within an image
void ImageDrawCircleV(Image *dst, Vector2 center, int radius, Color color);                                                 // Draw a filled circle within an image 
void ImageDrawCircleLines(Image *dst, int centerX, int centerY, int radius, Color color);                                   // Draw circle outline within an image
void ImageDrawCircleLinesV(Image *dst, Vector2 center, int radius, Color color);                                            // Draw circle outline within an image 
void ImageDrawRectangle(Image *dst, int posX, int posY, int width, int height, Color color);                                // Draw rectangle within an image
void ImageDrawRectangleV(Image *dst, Vector2 position, Vector2 size, Color color);                                          // Draw rectangle within an image 
void ImageDrawRectangleRec(Image *dst, Rectangle rec, Color color);                                                         // Draw rectangle within an image
void ImageDrawRectangleLines(Image *dst, Rectangle rec, int thick, Color color);                                            // Draw rectangle lines within an image
void ImageDraw(Image *dst, Image src, Rectangle srcRec, Rectangle dstRec, Color tint);                                      // Draw a source image within a destination image (tint applied to source)
void ImageDrawText(Image *dst, const char *text, int posX, int posY, int fontSize, Color color);                            // Draw text (using default font) within an image (destination)
void ImageDrawTextEx(Image *dst, Font font, const char *text, Vector2 position, float fontSize, float spacing, Color tint); // Draw text (custom sprite font) within an image (destination)
```
> Note: Image software-rendering functions (CPU)

#### ImageClearBackground
Clear image background with given color
Language|Symbol
---|---
C|`void ImageClearBackground(Image *dst, Color color);`
Swift|*unimplemented*
#### ImageDrawPixel
Draw pixel within an image
Language|Symbol
---|---
C|`void ImageDrawPixel(Image *dst, int posX, int posY, Color color);`
Swift|*unimplemented*
#### ImageDrawPixelV
Draw pixel within an image 
Language|Symbol
---|---
C|`void ImageDrawPixelV(Image *dst, Vector2 position, Color color);`
Swift|*unimplemented*
#### ImageDrawLine
Draw line within an image
Language|Symbol
---|---
C|`void ImageDrawLine(Image *dst, int startPosX, int startPosY, int endPosX, int endPosY, Color color);`
Swift|*unimplemented*
#### ImageDrawLineV
Draw line within an image 
Language|Symbol
---|---
C|`void ImageDrawLineV(Image *dst, Vector2 start, Vector2 end, Color color);`
Swift|*unimplemented*
#### ImageDrawCircle
Draw a filled circle within an image
Language|Symbol
---|---
C|`void ImageDrawCircle(Image *dst, int centerX, int centerY, int radius, Color color);`
Swift|*unimplemented*
#### ImageDrawCircleV
Draw a filled circle within an image 
Language|Symbol
---|---
C|`void ImageDrawCircleV(Image *dst, Vector2 center, int radius, Color color);`
Swift|*unimplemented*
#### ImageDrawCircleLines
Draw circle outline within an image
Language|Symbol
---|---
C|`void ImageDrawCircleLines(Image *dst, int centerX, int centerY, int radius, Color color);`
Swift|*unimplemented*
#### ImageDrawCircleLinesV
Draw circle outline within an image 
Language|Symbol
---|---
C|`void ImageDrawCircleLinesV(Image *dst, Vector2 center, int radius, Color color);`
Swift|*unimplemented*
#### ImageDrawRectangle
Draw rectangle within an image
Language|Symbol
---|---
C|`void ImageDrawRectangle(Image *dst, int posX, int posY, int width, int height, Color color);`
Swift|*unimplemented*
#### ImageDrawRectangleV
Draw rectangle within an image 
Language|Symbol
---|---
C|`void ImageDrawRectangleV(Image *dst, Vector2 position, Vector2 size, Color color);`
Swift|*unimplemented*
#### ImageDrawRectangleRec
Draw rectangle within an image
Language|Symbol
---|---
C|`void ImageDrawRectangleRec(Image *dst, Rectangle rec, Color color);`
Swift|*unimplemented*
#### ImageDrawRectangleLines
Draw rectangle lines within an image
Language|Symbol
---|---
C|`void ImageDrawRectangleLines(Image *dst, Rectangle rec, int thick, Color color);`
Swift|*unimplemented*
#### ImageDraw
Draw a source image within a destination image (tint applied to source)
Language|Symbol
---|---
C|`void ImageDraw(Image *dst, Image src, Rectangle srcRec, Rectangle dstRec, Color tint);`
Swift|*unimplemented*
#### ImageDrawText
Draw text (using default font) within an image (destination)
Language|Symbol
---|---
C|`void ImageDrawText(Image *dst, const char *text, int posX, int posY, int fontSize, Color color);`
Swift|*unimplemented*
#### ImageDrawTextEx
Draw text (custom sprite font) within an image (destination)
Language|Symbol
---|---
C|`void ImageDrawTextEx(Image *dst, Font font, const char *text, Vector2 position, float fontSize, float spacing, Color tint);`
Swift|*unimplemented*
### Texture loading functions
```c
Texture2D LoadTexture(const char *fileName);                                 // Load texture from file into GPU memory (VRAM)
Texture2D LoadTextureFromImage(Image image);                                 // Load texture from image data
TextureCubemap LoadTextureCubemap(Image image, int layout);                  // Load cubemap from image, multiple image cubemap layouts supported
RenderTexture2D LoadRenderTexture(int width, int height);                    // Load texture for rendering (framebuffer)
bool IsTextureReady(Texture2D texture);                                      // Check if a texture is ready
void UnloadTexture(Texture2D texture);                                       // Unload texture from GPU memory (VRAM)
bool IsRenderTextureReady(RenderTexture2D target);                           // Check if a render texture is ready
void UnloadRenderTexture(RenderTexture2D target);                            // Unload render texture from GPU memory (VRAM)
void UpdateTexture(Texture2D texture, const void *pixels);                   // Update GPU texture with new data
void UpdateTextureRec(Texture2D texture, Rectangle rec, const void *pixels); // Update GPU texture rectangle with new data
```
> Note: These functions require GPU access

#### LoadTexture
Load texture from file into GPU memory (VRAM)
Language|Symbol
---|---
C|`Texture2D LoadTexture(const char *fileName);`
Swift|*unimplemented*
#### LoadTextureFromImage
Load texture from image data
Language|Symbol
---|---
C|`Texture2D LoadTextureFromImage(Image image);`
Swift|*unimplemented*
#### LoadTextureCubemap
Load cubemap from image, multiple image cubemap layouts supported
Language|Symbol
---|---
C|`TextureCubemap LoadTextureCubemap(Image image, int layout);`
Swift|*unimplemented*
#### LoadRenderTexture
Load texture for rendering (framebuffer)
Language|Symbol
---|---
C|`RenderTexture2D LoadRenderTexture(int width, int height);`
Swift|*unimplemented*
#### IsTextureReady
Check if a texture is ready
Language|Symbol
---|---
C|`bool IsTextureReady(Texture2D texture);`
Swift|*unimplemented*
#### UnloadTexture
Unload texture from GPU memory (VRAM)
Language|Symbol
---|---
C|`void UnloadTexture(Texture2D texture);`
Swift|*unimplemented*
#### IsRenderTextureReady
Check if a render texture is ready
Language|Symbol
---|---
C|`bool IsRenderTextureReady(RenderTexture2D target);`
Swift|*unimplemented*
#### UnloadRenderTexture
Unload render texture from GPU memory (VRAM)
Language|Symbol
---|---
C|`void UnloadRenderTexture(RenderTexture2D target);`
Swift|*unimplemented*
#### UpdateTexture
Update GPU texture with new data
Language|Symbol
---|---
C|`void UpdateTexture(Texture2D texture, const void *pixels);`
Swift|*unimplemented*
#### UpdateTextureRec
Update GPU texture rectangle with new data
Language|Symbol
---|---
C|`void UpdateTextureRec(Texture2D texture, Rectangle rec, const void *pixels);`
Swift|*unimplemented*
### Texture configuration functions
```c
void GenTextureMipmaps(Texture2D *texture);           // Generate GPU mipmaps for a texture
void SetTextureFilter(Texture2D texture, int filter); // Set texture scaling filter mode
void SetTextureWrap(Texture2D texture, int wrap);     // Set texture wrapping mode
```
#### GenTextureMipmaps
Generate GPU mipmaps for a texture
Language|Symbol
---|---
C|`void GenTextureMipmaps(Texture2D *texture);`
Swift|*unimplemented*
#### SetTextureFilter
Set texture scaling filter mode
Language|Symbol
---|---
C|`void SetTextureFilter(Texture2D texture, int filter);`
Swift|*unimplemented*
#### SetTextureWrap
Set texture wrapping mode
Language|Symbol
---|---
C|`void SetTextureWrap(Texture2D texture, int wrap);`
Swift|*unimplemented*
### Texture drawing functions
```c
void DrawTexture(Texture2D texture, int posX, int posY, Color tint);                                                          // Draw a Texture2D
void DrawTextureV(Texture2D texture, Vector2 position, Color tint);                                                           // Draw a Texture2D with position defined as Vector2
void DrawTextureEx(Texture2D texture, Vector2 position, float rotation, float scale, Color tint);                             // Draw a Texture2D with extended parameters
void DrawTextureRec(Texture2D texture, Rectangle source, Vector2 position, Color tint);                                       // Draw a part of a texture defined by a rectangle
void DrawTexturePro(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint);         // Draw a part of a texture defined by a rectangle with 'pro' parameters
void DrawTextureNPatch(Texture2D texture, NPatchInfo nPatchInfo, Rectangle dest, Vector2 origin, float rotation, Color tint); // Draws a texture (or part of it) that stretches or shrinks nicely
```
#### DrawTexture
Draw a Texture2D
Language|Symbol
---|---
C|`void DrawTexture(Texture2D texture, int posX, int posY, Color tint);`
Swift|*unimplemented*
#### DrawTextureV
Draw a Texture2D with position defined as Vector2
Language|Symbol
---|---
C|`void DrawTextureV(Texture2D texture, Vector2 position, Color tint);`
Swift|*unimplemented*
#### DrawTextureEx
Draw a Texture2D with extended parameters
Language|Symbol
---|---
C|`void DrawTextureEx(Texture2D texture, Vector2 position, float rotation, float scale, Color tint);`
Swift|*unimplemented*
#### DrawTextureRec
Draw a part of a texture defined by a rectangle
Language|Symbol
---|---
C|`void DrawTextureRec(Texture2D texture, Rectangle source, Vector2 position, Color tint);`
Swift|*unimplemented*
#### DrawTexturePro
Draw a part of a texture defined by a rectangle with 'pro' parameters
Language|Symbol
---|---
C|`void DrawTexturePro(Texture2D texture, Rectangle source, Rectangle dest, Vector2 origin, float rotation, Color tint);`
Swift|*unimplemented*
#### DrawTextureNPatch
Draws a texture (or part of it) that stretches or shrinks nicely
Language|Symbol
---|---
C|`void DrawTextureNPatch(Texture2D texture, NPatchInfo nPatchInfo, Rectangle dest, Vector2 origin, float rotation, Color tint);`
Swift|*unimplemented*
### Color/pixel related functions
```c
Color Fade(Color color, float alpha);                         // Get color with alpha applied, alpha goes from 0.0f to 1.0f
int ColorToInt(Color color);                                  // Get hexadecimal value for a Color
Vector4 ColorNormalize(Color color);                          // Get Color normalized as float [0..1]
Color ColorFromNormalized(Vector4 normalized);                // Get Color from normalized values [0..1]
Vector3 ColorToHSV(Color color);                              // Get HSV values for a Color, hue [0..360], saturation/value [0..1]
Color ColorFromHSV(float hue, float saturation, float value); // Get a Color from HSV values, hue [0..360], saturation/value [0..1]
Color ColorTint(Color color, Color tint);                     // Get color multiplied with another color
Color ColorBrightness(Color color, float factor);             // Get color with brightness correction, brightness factor goes from -1.0f to 1.0f
Color ColorContrast(Color color, float contrast);             // Get color with contrast correction, contrast values between -1.0f and 1.0f
Color ColorAlpha(Color color, float alpha);                   // Get color with alpha applied, alpha goes from 0.0f to 1.0f
Color ColorAlphaBlend(Color dst, Color src, Color tint);      // Get src alpha-blended into dst color with tint
Color GetColor(unsigned int hexValue);                        // Get Color structure from hexadecimal value
Color GetPixelColor(void *srcPtr, int format);                // Get Color from a source pixel pointer of certain format
void SetPixelColor(void *dstPtr, Color color, int format);    // Set color formatted into destination pixel pointer
int GetPixelDataSize(int width, int height, int format);      // Get pixel data size in bytes for certain format
```
#### Fade
Get color with alpha applied, alpha goes from 0.0f to 1.0f
Language|Symbol
---|---
C|`Color Fade(Color color, float alpha);`
Swift|*unimplemented*
#### ColorToInt
Get hexadecimal value for a Color
Language|Symbol
---|---
C|`int ColorToInt(Color color);`
Swift|*unimplemented*
#### ColorNormalize
Get Color normalized as float [0..1]
Language|Symbol
---|---
C|`Vector4 ColorNormalize(Color color);`
Swift|*unimplemented*
#### ColorFromNormalized
Get Color from normalized values [0..1]
Language|Symbol
---|---
C|`Color ColorFromNormalized(Vector4 normalized);`
Swift|*unimplemented*
#### ColorToHSV
Get HSV values for a Color, hue [0..360], saturation/value [0..1]
Language|Symbol
---|---
C|`Vector3 ColorToHSV(Color color);`
Swift|*unimplemented*
#### ColorFromHSV
Get a Color from HSV values, hue [0..360], saturation/value [0..1]
Language|Symbol
---|---
C|`Color ColorFromHSV(float hue, float saturation, float value);`
Swift|*unimplemented*
#### ColorTint
Get color multiplied with another color
Language|Symbol
---|---
C|`Color ColorTint(Color color, Color tint);`
Swift|*unimplemented*
#### ColorBrightness
Get color with brightness correction, brightness factor goes from -1.0f to 1.0f
Language|Symbol
---|---
C|`Color ColorBrightness(Color color, float factor);`
Swift|*unimplemented*
#### ColorContrast
Get color with contrast correction, contrast values between -1.0f and 1.0f
Language|Symbol
---|---
C|`Color ColorContrast(Color color, float contrast);`
Swift|*unimplemented*
#### ColorAlpha
Get color with alpha applied, alpha goes from 0.0f to 1.0f
Language|Symbol
---|---
C|`Color ColorAlpha(Color color, float alpha);`
Swift|*unimplemented*
#### ColorAlphaBlend
Get src alpha-blended into dst color with tint
Language|Symbol
---|---
C|`Color ColorAlphaBlend(Color dst, Color src, Color tint);`
Swift|*unimplemented*
#### GetColor
Get Color structure from hexadecimal value
Language|Symbol
---|---
C|`Color GetColor(unsigned int hexValue);`
Swift|*unimplemented*
#### GetPixelColor
Get Color from a source pixel pointer of certain format
Language|Symbol
---|---
C|`Color GetPixelColor(void *srcPtr, int format);`
Swift|*unimplemented*
#### SetPixelColor
Set color formatted into destination pixel pointer
Language|Symbol
---|---
C|`void SetPixelColor(void *dstPtr, Color color, int format);`
Swift|*unimplemented*
#### GetPixelDataSize
Get pixel data size in bytes for certain format
Language|Symbol
---|---
C|`int GetPixelDataSize(int width, int height, int format);`
Swift|*unimplemented*
## Font Loading and Text Drawing Functions (Module: text)
### Font loading/unloading functions
```c
Font GetFontDefault(void);                                                                                                                // Get the default Font
Font LoadFont(const char *fileName);                                                                                                      // Load font from file into GPU memory (VRAM)
Font LoadFontEx(const char *fileName, int fontSize, int *fontChars, int glyphCount);                                                      // Load font from file with extended parameters, use NULL for fontChars and 0 for glyphCount to load the default character set
Font LoadFontFromImage(Image image, Color key, int firstChar);                                                                            // Load font from Image (XNA style)
Font LoadFontFromMemory(const char *fileType, const unsigned char *fileData, int dataSize, int fontSize, int *fontChars, int glyphCount); // Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
bool IsFontReady(Font font);                                                                                                              // Check if a font is ready
GlyphInfo *LoadFontData(const unsigned char *fileData, int dataSize, int fontSize, int *fontChars, int glyphCount, int type);             // Load font data for further use
Image GenImageFontAtlas(const GlyphInfo *chars, Rectangle **recs, int glyphCount, int fontSize, int padding, int packMethod);             // Generate image font atlas using chars info
void UnloadFontData(GlyphInfo *chars, int glyphCount);                                                                                    // Unload font chars info data (RAM)
void UnloadFont(Font font);                                                                                                               // Unload font from GPU memory (VRAM)
bool ExportFontAsCode(Font font, const char *fileName);                                                                                   // Export font as code file, returns true on success
```
#### GetFontDefault
Get the default Font
Language|Symbol
---|---
C|`Font GetFontDefault(void);`
Swift|*unimplemented*
#### LoadFont
Load font from file into GPU memory (VRAM)
Language|Symbol
---|---
C|`Font LoadFont(const char *fileName);`
Swift|*unimplemented*
#### LoadFontEx
Load font from file with extended parameters, use NULL for fontChars and 0 for glyphCount to load the default character set
Language|Symbol
---|---
C|`Font LoadFontEx(const char *fileName, int fontSize, int *fontChars, int glyphCount);`
Swift|*unimplemented*
#### LoadFontFromImage
Load font from Image (XNA style)
Language|Symbol
---|---
C|`Font LoadFontFromImage(Image image, Color key, int firstChar);`
Swift|*unimplemented*
#### LoadFontFromMemory
Load font from memory buffer, fileType refers to extension: i.e. '.ttf'
Language|Symbol
---|---
C|`Font LoadFontFromMemory(const char *fileType, const unsigned char *fileData, int dataSize, int fontSize, int *fontChars, int glyphCount);`
Swift|*unimplemented*
#### IsFontReady
Check if a font is ready
Language|Symbol
---|---
C|`bool IsFontReady(Font font);`
Swift|*unimplemented*
#### LoadFontData
Load font data for further use
Language|Symbol
---|---
C|`GlyphInfo *LoadFontData(const unsigned char *fileData, int dataSize, int fontSize, int *fontChars, int glyphCount, int type);`
Swift|*unimplemented*
#### GenImageFontAtlas
Generate image font atlas using chars info
Language|Symbol
---|---
C|`Image GenImageFontAtlas(const GlyphInfo *chars, Rectangle **recs, int glyphCount, int fontSize, int padding, int packMethod);`
Swift|*unimplemented*
#### UnloadFontData
Unload font chars info data (RAM)
Language|Symbol
---|---
C|`void UnloadFontData(GlyphInfo *chars, int glyphCount);`
Swift|*unimplemented*
#### UnloadFont
Unload font from GPU memory (VRAM)
Language|Symbol
---|---
C|`void UnloadFont(Font font);`
Swift|*unimplemented*
#### ExportFontAsCode
Export font as code file, returns true on success
Language|Symbol
---|---
C|`bool ExportFontAsCode(Font font, const char *fileName);`
Swift|*unimplemented*
### Text drawing functions
```c
void DrawFPS(int posX, int posY);                                                                                                           // Draw current FPS
void DrawText(const char *text, int posX, int posY, int fontSize, Color color);                                                             // Draw text (using default font)
void DrawTextEx(Font font, const char *text, Vector2 position, float fontSize, float spacing, Color tint);                                  // Draw text using font and additional parameters
void DrawTextPro(Font font, const char *text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint); // Draw text using Font and pro parameters (rotation)
void DrawTextCodepoint(Font font, int codepoint, Vector2 position, float fontSize, Color tint);                                             // Draw one character (codepoint)
void DrawTextCodepoints(Font font, const int *codepoints, int count, Vector2 position, float fontSize, float spacing, Color tint);          // Draw multiple character (codepoint)
```
#### DrawFPS
Draw current FPS
Language|Symbol
---|---
C|`void DrawFPS(int posX, int posY);`
Swift|*unimplemented*
#### DrawText
Draw text (using default font)
Language|Symbol
---|---
C|`void DrawText(const char *text, int posX, int posY, int fontSize, Color color);`
Swift|*unimplemented*
#### DrawTextEx
Draw text using font and additional parameters
Language|Symbol
---|---
C|`void DrawTextEx(Font font, const char *text, Vector2 position, float fontSize, float spacing, Color tint);`
Swift|*unimplemented*
#### DrawTextPro
Draw text using Font and pro parameters (rotation)
Language|Symbol
---|---
C|`void DrawTextPro(Font font, const char *text, Vector2 position, Vector2 origin, float rotation, float fontSize, float spacing, Color tint);`
Swift|*unimplemented*
#### DrawTextCodepoint
Draw one character (codepoint)
Language|Symbol
---|---
C|`void DrawTextCodepoint(Font font, int codepoint, Vector2 position, float fontSize, Color tint);`
Swift|*unimplemented*
#### DrawTextCodepoints
Draw multiple character (codepoint)
Language|Symbol
---|---
C|`void DrawTextCodepoints(Font font, const int *codepoints, int count, Vector2 position, float fontSize, float spacing, Color tint);`
Swift|*unimplemented*
### Text font info functions
```c
int MeasureText(const char *text, int fontSize);                                   // Measure string width for default font
Vector2 MeasureTextEx(Font font, const char *text, float fontSize, float spacing); // Measure string size for Font
int GetGlyphIndex(Font font, int codepoint);                                       // Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
GlyphInfo GetGlyphInfo(Font font, int codepoint);                                  // Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
Rectangle GetGlyphAtlasRec(Font font, int codepoint);                              // Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
```
#### MeasureText
Measure string width for default font
Language|Symbol
---|---
C|`int MeasureText(const char *text, int fontSize);`
Swift|*unimplemented*
#### MeasureTextEx
Measure string size for Font
Language|Symbol
---|---
C|`Vector2 MeasureTextEx(Font font, const char *text, float fontSize, float spacing);`
Swift|*unimplemented*
#### GetGlyphIndex
Get glyph index position in font for a codepoint (unicode character), fallback to '?' if not found
Language|Symbol
---|---
C|`int GetGlyphIndex(Font font, int codepoint);`
Swift|*unimplemented*
#### GetGlyphInfo
Get glyph font info data for a codepoint (unicode character), fallback to '?' if not found
Language|Symbol
---|---
C|`GlyphInfo GetGlyphInfo(Font font, int codepoint);`
Swift|*unimplemented*
#### GetGlyphAtlasRec
Get glyph rectangle in font atlas for a codepoint (unicode character), fallback to '?' if not found
Language|Symbol
---|---
C|`Rectangle GetGlyphAtlasRec(Font font, int codepoint);`
Swift|*unimplemented*
### Text codepoints management functions (unicode characters)
```c
char *LoadUTF8(const int *codepoints, int length);              // Load UTF-8 text encoded from codepoints array
void UnloadUTF8(char *text);                                    // Unload UTF-8 text encoded from codepoints array
int *LoadCodepoints(const char *text, int *count);              // Load all codepoints from a UTF-8 text string, codepoints count returned by parameter
void UnloadCodepoints(int *codepoints);                         // Unload codepoints data from memory
int GetCodepointCount(const char *text);                        // Get total number of codepoints in a UTF-8 encoded string
int GetCodepoint(const char *text, int *codepointSize);         // Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
int GetCodepointNext(const char *text, int *codepointSize);     // Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
int GetCodepointPrevious(const char *text, int *codepointSize); // Get previous codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
const char *CodepointToUTF8(int codepoint, int *utf8Size);      // Encode one codepoint into UTF-8 byte array (array length returned as parameter)
```
#### LoadUTF8
Load UTF-8 text encoded from codepoints array
Language|Symbol
---|---
C|`char *LoadUTF8(const int *codepoints, int length);`
Swift|*unimplemented*
#### UnloadUTF8
Unload UTF-8 text encoded from codepoints array
Language|Symbol
---|---
C|`void UnloadUTF8(char *text);`
Swift|*unimplemented*
#### LoadCodepoints
Load all codepoints from a UTF-8 text string, codepoints count returned by parameter
Language|Symbol
---|---
C|`int *LoadCodepoints(const char *text, int *count);`
Swift|*unimplemented*
#### UnloadCodepoints
Unload codepoints data from memory
Language|Symbol
---|---
C|`void UnloadCodepoints(int *codepoints);`
Swift|*unimplemented*
#### GetCodepointCount
Get total number of codepoints in a UTF-8 encoded string
Language|Symbol
---|---
C|`int GetCodepointCount(const char *text);`
Swift|*unimplemented*
#### GetCodepoint
Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
Language|Symbol
---|---
C|`int GetCodepoint(const char *text, int *codepointSize);`
Swift|*unimplemented*
#### GetCodepointNext
Get next codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
Language|Symbol
---|---
C|`int GetCodepointNext(const char *text, int *codepointSize);`
Swift|*unimplemented*
#### GetCodepointPrevious
Get previous codepoint in a UTF-8 encoded string, 0x3f('?') is returned on failure
Language|Symbol
---|---
C|`int GetCodepointPrevious(const char *text, int *codepointSize);`
Swift|*unimplemented*
#### CodepointToUTF8
Encode one codepoint into UTF-8 byte array (array length returned as parameter)
Language|Symbol
---|---
C|`const char *CodepointToUTF8(int codepoint, int *utf8Size);`
Swift|*unimplemented*
### Text strings management functions (no UTF-8 strings, only byte chars)
```c
int TextCopy(char *dst, const char *src);                                      // Copy one string to another, returns bytes copied
bool TextIsEqual(const char *text1, const char *text2);                        // Check if two text string are equal
unsigned int TextLength(const char *text);                                     // Get text length, checks for '\0' ending
const char *TextFormat(const char *text, ...);                                 // Text formatting with variables (sprintf() style)
const char *TextSubtext(const char *text, int position, int length);           // Get a piece of a text string
char *TextReplace(char *text, const char *replace, const char *by);            // Replace text string (WARNING: memory must be freed!)
char *TextInsert(const char *text, const char *insert, int position);          // Insert text in a position (WARNING: memory must be freed!)
const char *TextJoin(const char **textList, int count, const char *delimiter); // Join text strings with delimiter
const char **TextSplit(const char *text, char delimiter, int *count);          // Split text into multiple strings
void TextAppend(char *text, const char *append, int *position);                // Append text at specific position and move cursor!
int TextFindIndex(const char *text, const char *find);                         // Find first text occurrence within a string
const char *TextToUpper(const char *text);                                     // Get upper case version of provided string
const char *TextToLower(const char *text);                                     // Get lower case version of provided string
const char *TextToPascal(const char *text);                                    // Get Pascal case notation version of provided string
int TextToInteger(const char *text);                                           // Get integer value from text (negative values not supported)
```
> Note: Some strings allocate memory internally for returned strings, just be careful!

#### TextCopy
Copy one string to another, returns bytes copied
Language|Symbol
---|---
C|`int TextCopy(char *dst, const char *src);`
Swift|*unimplemented*
#### TextIsEqual
Check if two text string are equal
Language|Symbol
---|---
C|`bool TextIsEqual(const char *text1, const char *text2);`
Swift|*unimplemented*
#### TextLength
Get text length, checks for '\0' ending
Language|Symbol
---|---
C|`unsigned int TextLength(const char *text);`
Swift|*unimplemented*
#### TextFormat
Text formatting with variables (sprintf() style)
Language|Symbol
---|---
C|`const char *TextFormat(const char *text, ...);`
Swift|*unimplemented*
#### TextSubtext
Get a piece of a text string
Language|Symbol
---|---
C|`const char *TextSubtext(const char *text, int position, int length);`
Swift|*unimplemented*
#### TextReplace
Replace text string (WARNING: memory must be freed!)
Language|Symbol
---|---
C|`char *TextReplace(char *text, const char *replace, const char *by);`
Swift|*unimplemented*
#### TextInsert
Insert text in a position (WARNING: memory must be freed!)
Language|Symbol
---|---
C|`char *TextInsert(const char *text, const char *insert, int position);`
Swift|*unimplemented*
#### TextJoin
Join text strings with delimiter
Language|Symbol
---|---
C|`const char *TextJoin(const char **textList, int count, const char *delimiter);`
Swift|*unimplemented*
#### TextSplit
Split text into multiple strings
Language|Symbol
---|---
C|`const char **TextSplit(const char *text, char delimiter, int *count);`
Swift|*unimplemented*
#### TextAppend
Append text at specific position and move cursor!
Language|Symbol
---|---
C|`void TextAppend(char *text, const char *append, int *position);`
Swift|*unimplemented*
#### TextFindIndex
Find first text occurrence within a string
Language|Symbol
---|---
C|`int TextFindIndex(const char *text, const char *find);`
Swift|*unimplemented*
#### TextToUpper
Get upper case version of provided string
Language|Symbol
---|---
C|`const char *TextToUpper(const char *text);`
Swift|*unimplemented*
#### TextToLower
Get lower case version of provided string
Language|Symbol
---|---
C|`const char *TextToLower(const char *text);`
Swift|*unimplemented*
#### TextToPascal
Get Pascal case notation version of provided string
Language|Symbol
---|---
C|`const char *TextToPascal(const char *text);`
Swift|*unimplemented*
#### TextToInteger
Get integer value from text (negative values not supported)
Language|Symbol
---|---
C|`int TextToInteger(const char *text);`
Swift|*unimplemented*
## Basic 3d Shapes Drawing Functions (Module: models)
### Basic geometric 3D shapes drawing functions
```c
void DrawLine3D(Vector3 startPos, Vector3 endPos, Color color);                                                         // Draw a line in 3D world space
void DrawPoint3D(Vector3 position, Color color);                                                                        // Draw a point in 3D space, actually a small line
void DrawCircle3D(Vector3 center, float radius, Vector3 rotationAxis, float rotationAngle, Color color);                // Draw a circle in 3D world space
void DrawTriangle3D(Vector3 v1, Vector3 v2, Vector3 v3, Color color);                                                   // Draw a color-filled triangle (vertex in counter-clockwise order!)
void DrawTriangleStrip3D(Vector3 *points, int pointCount, Color color);                                                 // Draw a triangle strip defined by points
void DrawCube(Vector3 position, float width, float height, float length, Color color);                                  // Draw cube
void DrawCubeV(Vector3 position, Vector3 size, Color color);                                                            // Draw cube 
void DrawCubeWires(Vector3 position, float width, float height, float length, Color color);                             // Draw cube wires
void DrawCubeWiresV(Vector3 position, Vector3 size, Color color);                                                       // Draw cube wires 
void DrawSphere(Vector3 centerPos, float radius, Color color);                                                          // Draw sphere
void DrawSphereEx(Vector3 centerPos, float radius, int rings, int slices, Color color);                                 // Draw sphere with extended parameters
void DrawSphereWires(Vector3 centerPos, float radius, int rings, int slices, Color color);                              // Draw sphere wires
void DrawCylinder(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);        // Draw a cylinder/cone
void DrawCylinderEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);      // Draw a cylinder with base at startPos and top at endPos
void DrawCylinderWires(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);   // Draw a cylinder/cone wires
void DrawCylinderWiresEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color); // Draw a cylinder wires with base at startPos and top at endPos
void DrawCapsule(Vector3 startPos, Vector3 endPos, float radius, int slices, int rings, Color color);                   // Draw a capsule with the center of its sphere caps at startPos and endPos
void DrawCapsuleWires(Vector3 startPos, Vector3 endPos, float radius, int slices, int rings, Color color);              // Draw capsule wireframe with the center of its sphere caps at startPos and endPos
void DrawPlane(Vector3 centerPos, Vector2 size, Color color);                                                           // Draw a plane XZ
void DrawRay(Ray ray, Color color);                                                                                     // Draw a ray line
void DrawGrid(int slices, float spacing);                                                                               // Draw a grid (centered at (0, 0, 0))
```
#### DrawLine3D
Draw a line in 3D world space
Language|Symbol
---|---
C|`void DrawLine3D(Vector3 startPos, Vector3 endPos, Color color);`
Swift|*unimplemented*
#### DrawPoint3D
Draw a point in 3D space, actually a small line
Language|Symbol
---|---
C|`void DrawPoint3D(Vector3 position, Color color);`
Swift|*unimplemented*
#### DrawCircle3D
Draw a circle in 3D world space
Language|Symbol
---|---
C|`void DrawCircle3D(Vector3 center, float radius, Vector3 rotationAxis, float rotationAngle, Color color);`
Swift|*unimplemented*
#### DrawTriangle3D
Draw a color-filled triangle (vertex in counter-clockwise order!)
Language|Symbol
---|---
C|`void DrawTriangle3D(Vector3 v1, Vector3 v2, Vector3 v3, Color color);`
Swift|*unimplemented*
#### DrawTriangleStrip3D
Draw a triangle strip defined by points
Language|Symbol
---|---
C|`void DrawTriangleStrip3D(Vector3 *points, int pointCount, Color color);`
Swift|*unimplemented*
#### DrawCube
Draw cube
Language|Symbol
---|---
C|`void DrawCube(Vector3 position, float width, float height, float length, Color color);`
Swift|*unimplemented*
#### DrawCubeV
Draw cube 
Language|Symbol
---|---
C|`void DrawCubeV(Vector3 position, Vector3 size, Color color);`
Swift|*unimplemented*
#### DrawCubeWires
Draw cube wires
Language|Symbol
---|---
C|`void DrawCubeWires(Vector3 position, float width, float height, float length, Color color);`
Swift|*unimplemented*
#### DrawCubeWiresV
Draw cube wires 
Language|Symbol
---|---
C|`void DrawCubeWiresV(Vector3 position, Vector3 size, Color color);`
Swift|*unimplemented*
#### DrawSphere
Draw sphere
Language|Symbol
---|---
C|`void DrawSphere(Vector3 centerPos, float radius, Color color);`
Swift|*unimplemented*
#### DrawSphereEx
Draw sphere with extended parameters
Language|Symbol
---|---
C|`void DrawSphereEx(Vector3 centerPos, float radius, int rings, int slices, Color color);`
Swift|*unimplemented*
#### DrawSphereWires
Draw sphere wires
Language|Symbol
---|---
C|`void DrawSphereWires(Vector3 centerPos, float radius, int rings, int slices, Color color);`
Swift|*unimplemented*
#### DrawCylinder
Draw a cylinder/cone
Language|Symbol
---|---
C|`void DrawCylinder(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);`
Swift|*unimplemented*
#### DrawCylinderEx
Draw a cylinder with base at startPos and top at endPos
Language|Symbol
---|---
C|`void DrawCylinderEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);`
Swift|*unimplemented*
#### DrawCylinderWires
Draw a cylinder/cone wires
Language|Symbol
---|---
C|`void DrawCylinderWires(Vector3 position, float radiusTop, float radiusBottom, float height, int slices, Color color);`
Swift|*unimplemented*
#### DrawCylinderWiresEx
Draw a cylinder wires with base at startPos and top at endPos
Language|Symbol
---|---
C|`void DrawCylinderWiresEx(Vector3 startPos, Vector3 endPos, float startRadius, float endRadius, int sides, Color color);`
Swift|*unimplemented*
#### DrawCapsule
Draw a capsule with the center of its sphere caps at startPos and endPos
Language|Symbol
---|---
C|`void DrawCapsule(Vector3 startPos, Vector3 endPos, float radius, int slices, int rings, Color color);`
Swift|*unimplemented*
#### DrawCapsuleWires
Draw capsule wireframe with the center of its sphere caps at startPos and endPos
Language|Symbol
---|---
C|`void DrawCapsuleWires(Vector3 startPos, Vector3 endPos, float radius, int slices, int rings, Color color);`
Swift|*unimplemented*
#### DrawPlane
Draw a plane XZ
Language|Symbol
---|---
C|`void DrawPlane(Vector3 centerPos, Vector2 size, Color color);`
Swift|*unimplemented*
#### DrawRay
Draw a ray line
Language|Symbol
---|---
C|`void DrawRay(Ray ray, Color color);`
Swift|*unimplemented*
#### DrawGrid
Draw a grid (centered at (0, 0, 0))
Language|Symbol
---|---
C|`void DrawGrid(int slices, float spacing);`
Swift|*unimplemented*
## Model 3d Loading and Drawing Functions (Module: models)
### Model management functions
```c
Model LoadModel(const char *fileName);        // Load model from files (meshes and materials)
Model LoadModelFromMesh(Mesh mesh);           // Load model from generated mesh (default material)
bool IsModelReady(Model model);               // Check if a model is ready
void UnloadModel(Model model);                // Unload model (including meshes) from memory (RAM and/or VRAM)
void UnloadModelKeepMeshes(Model model);      // Unload model (but not meshes) from memory (RAM and/or VRAM)
BoundingBox GetModelBoundingBox(Model model); // Compute model bounding box limits (considers all meshes)
```
#### LoadModel
Load model from files (meshes and materials)
Language|Symbol
---|---
C|`Model LoadModel(const char *fileName);`
Swift|*unimplemented*
#### LoadModelFromMesh
Load model from generated mesh (default material)
Language|Symbol
---|---
C|`Model LoadModelFromMesh(Mesh mesh);`
Swift|*unimplemented*
#### IsModelReady
Check if a model is ready
Language|Symbol
---|---
C|`bool IsModelReady(Model model);`
Swift|*unimplemented*
#### UnloadModel
Unload model (including meshes) from memory (RAM and/or VRAM)
Language|Symbol
---|---
C|`void UnloadModel(Model model);`
Swift|*unimplemented*
#### UnloadModelKeepMeshes
Unload model (but not meshes) from memory (RAM and/or VRAM)
Language|Symbol
---|---
C|`void UnloadModelKeepMeshes(Model model);`
Swift|*unimplemented*
#### GetModelBoundingBox
Compute model bounding box limits (considers all meshes)
Language|Symbol
---|---
C|`BoundingBox GetModelBoundingBox(Model model);`
Swift|*unimplemented*
### Model drawing functions
```c
void DrawModel(Model model, Vector3 position, float scale, Color tint);                                                                                            // Draw a model (with texture if set)
void DrawModelEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);                                             // Draw a model with extended parameters
void DrawModelWires(Model model, Vector3 position, float scale, Color tint);                                                                                       // Draw a model wires (with texture if set)
void DrawModelWiresEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);                                        // Draw a model wires (with texture if set) with extended parameters
void DrawBoundingBox(BoundingBox box, Color color);                                                                                                                // Draw bounding box (wires)
void DrawBillboard(Camera camera, Texture2D texture, Vector3 position, float size, Color tint);                                                                    // Draw a billboard texture
void DrawBillboardRec(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector2 size, Color tint);                                             // Draw a billboard texture defined by source
void DrawBillboardPro(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector3 up, Vector2 size, Vector2 origin, float rotation, Color tint); // Draw a billboard texture defined by source and rotation
```
#### DrawModel
Draw a model (with texture if set)
Language|Symbol
---|---
C|`void DrawModel(Model model, Vector3 position, float scale, Color tint);`
Swift|*unimplemented*
#### DrawModelEx
Draw a model with extended parameters
Language|Symbol
---|---
C|`void DrawModelEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);`
Swift|*unimplemented*
#### DrawModelWires
Draw a model wires (with texture if set)
Language|Symbol
---|---
C|`void DrawModelWires(Model model, Vector3 position, float scale, Color tint);`
Swift|*unimplemented*
#### DrawModelWiresEx
Draw a model wires (with texture if set) with extended parameters
Language|Symbol
---|---
C|`void DrawModelWiresEx(Model model, Vector3 position, Vector3 rotationAxis, float rotationAngle, Vector3 scale, Color tint);`
Swift|*unimplemented*
#### DrawBoundingBox
Draw bounding box (wires)
Language|Symbol
---|---
C|`void DrawBoundingBox(BoundingBox box, Color color);`
Swift|*unimplemented*
#### DrawBillboard
Draw a billboard texture
Language|Symbol
---|---
C|`void DrawBillboard(Camera camera, Texture2D texture, Vector3 position, float size, Color tint);`
Swift|*unimplemented*
#### DrawBillboardRec
Draw a billboard texture defined by source
Language|Symbol
---|---
C|`void DrawBillboardRec(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector2 size, Color tint);`
Swift|*unimplemented*
#### DrawBillboardPro
Draw a billboard texture defined by source and rotation
Language|Symbol
---|---
C|`void DrawBillboardPro(Camera camera, Texture2D texture, Rectangle source, Vector3 position, Vector3 up, Vector2 size, Vector2 origin, float rotation, Color tint);`
Swift|*unimplemented*
### Mesh management functions
```c
void UploadMesh(Mesh *mesh, bool dynamic);                                                     // Upload mesh vertex data in GPU and provide VAO/VBO ids
void UpdateMeshBuffer(Mesh mesh, int index, const void *data, int dataSize, int offset);       // Update mesh vertex data in GPU for a specific buffer index
void UnloadMesh(Mesh mesh);                                                                    // Unload mesh data from CPU and GPU
void DrawMesh(Mesh mesh, Material material, Matrix transform);                                 // Draw a 3d mesh with material and transform
void DrawMeshInstanced(Mesh mesh, Material material, const Matrix *transforms, int instances); // Draw multiple mesh instances with material and different transforms
bool ExportMesh(Mesh mesh, const char *fileName);                                              // Export mesh data to file, returns true on success
BoundingBox GetMeshBoundingBox(Mesh mesh);                                                     // Compute mesh bounding box limits
void GenMeshTangents(Mesh *mesh);                                                              // Compute mesh tangents
```
#### UploadMesh
Upload mesh vertex data in GPU and provide VAO/VBO ids
Language|Symbol
---|---
C|`void UploadMesh(Mesh *mesh, bool dynamic);`
Swift|*unimplemented*
#### UpdateMeshBuffer
Update mesh vertex data in GPU for a specific buffer index
Language|Symbol
---|---
C|`void UpdateMeshBuffer(Mesh mesh, int index, const void *data, int dataSize, int offset);`
Swift|*unimplemented*
#### UnloadMesh
Unload mesh data from CPU and GPU
Language|Symbol
---|---
C|`void UnloadMesh(Mesh mesh);`
Swift|*unimplemented*
#### DrawMesh
Draw a 3d mesh with material and transform
Language|Symbol
---|---
C|`void DrawMesh(Mesh mesh, Material material, Matrix transform);`
Swift|*unimplemented*
#### DrawMeshInstanced
Draw multiple mesh instances with material and different transforms
Language|Symbol
---|---
C|`void DrawMeshInstanced(Mesh mesh, Material material, const Matrix *transforms, int instances);`
Swift|*unimplemented*
#### ExportMesh
Export mesh data to file, returns true on success
Language|Symbol
---|---
C|`bool ExportMesh(Mesh mesh, const char *fileName);`
Swift|*unimplemented*
#### GetMeshBoundingBox
Compute mesh bounding box limits
Language|Symbol
---|---
C|`BoundingBox GetMeshBoundingBox(Mesh mesh);`
Swift|*unimplemented*
#### GenMeshTangents
Compute mesh tangents
Language|Symbol
---|---
C|`void GenMeshTangents(Mesh *mesh);`
Swift|*unimplemented*
### Mesh generation functions
```c
Mesh GenMeshPoly(int sides, float radius);                          // Generate polygonal mesh
Mesh GenMeshPlane(float width, float length, int resX, int resZ);   // Generate plane mesh (with subdivisions)
Mesh GenMeshCube(float width, float height, float length);          // Generate cuboid mesh
Mesh GenMeshSphere(float radius, int rings, int slices);            // Generate sphere mesh (standard sphere)
Mesh GenMeshHemiSphere(float radius, int rings, int slices);        // Generate half-sphere mesh (no bottom cap)
Mesh GenMeshCylinder(float radius, float height, int slices);       // Generate cylinder mesh
Mesh GenMeshCone(float radius, float height, int slices);           // Generate cone/pyramid mesh
Mesh GenMeshTorus(float radius, float size, int radSeg, int sides); // Generate torus mesh
Mesh GenMeshKnot(float radius, float size, int radSeg, int sides);  // Generate trefoil knot mesh
Mesh GenMeshHeightmap(Image heightmap, Vector3 size);               // Generate heightmap mesh from image data
Mesh GenMeshCubicmap(Image cubicmap, Vector3 cubeSize);             // Generate cubes-based map mesh from image data
```
#### GenMeshPoly
Generate polygonal mesh
Language|Symbol
---|---
C|`Mesh GenMeshPoly(int sides, float radius);`
Swift|*unimplemented*
#### GenMeshPlane
Generate plane mesh (with subdivisions)
Language|Symbol
---|---
C|`Mesh GenMeshPlane(float width, float length, int resX, int resZ);`
Swift|*unimplemented*
#### GenMeshCube
Generate cuboid mesh
Language|Symbol
---|---
C|`Mesh GenMeshCube(float width, float height, float length);`
Swift|*unimplemented*
#### GenMeshSphere
Generate sphere mesh (standard sphere)
Language|Symbol
---|---
C|`Mesh GenMeshSphere(float radius, int rings, int slices);`
Swift|*unimplemented*
#### GenMeshHemiSphere
Generate half-sphere mesh (no bottom cap)
Language|Symbol
---|---
C|`Mesh GenMeshHemiSphere(float radius, int rings, int slices);`
Swift|*unimplemented*
#### GenMeshCylinder
Generate cylinder mesh
Language|Symbol
---|---
C|`Mesh GenMeshCylinder(float radius, float height, int slices);`
Swift|*unimplemented*
#### GenMeshCone
Generate cone/pyramid mesh
Language|Symbol
---|---
C|`Mesh GenMeshCone(float radius, float height, int slices);`
Swift|*unimplemented*
#### GenMeshTorus
Generate torus mesh
Language|Symbol
---|---
C|`Mesh GenMeshTorus(float radius, float size, int radSeg, int sides);`
Swift|*unimplemented*
#### GenMeshKnot
Generate trefoil knot mesh
Language|Symbol
---|---
C|`Mesh GenMeshKnot(float radius, float size, int radSeg, int sides);`
Swift|*unimplemented*
#### GenMeshHeightmap
Generate heightmap mesh from image data
Language|Symbol
---|---
C|`Mesh GenMeshHeightmap(Image heightmap, Vector3 size);`
Swift|*unimplemented*
#### GenMeshCubicmap
Generate cubes-based map mesh from image data
Language|Symbol
---|---
C|`Mesh GenMeshCubicmap(Image cubicmap, Vector3 cubeSize);`
Swift|*unimplemented*
### Material loading/unloading functions
```c
Material *LoadMaterials(const char *fileName, int *materialCount);           // Load materials from model file
Material LoadMaterialDefault(void);                                          // Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
bool IsMaterialReady(Material material);                                     // Check if a material is ready
void UnloadMaterial(Material material);                                      // Unload material from GPU memory (VRAM)
void SetMaterialTexture(Material *material, int mapType, Texture2D texture); // Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)
void SetModelMeshMaterial(Model *model, int meshId, int materialId);         // Set material for a mesh
```
#### LoadMaterials
Load materials from model file
Language|Symbol
---|---
C|`Material *LoadMaterials(const char *fileName, int *materialCount);`
Swift|*unimplemented*
#### LoadMaterialDefault
Load default material (Supports: DIFFUSE, SPECULAR, NORMAL maps)
Language|Symbol
---|---
C|`Material LoadMaterialDefault(void);`
Swift|*unimplemented*
#### IsMaterialReady
Check if a material is ready
Language|Symbol
---|---
C|`bool IsMaterialReady(Material material);`
Swift|*unimplemented*
#### UnloadMaterial
Unload material from GPU memory (VRAM)
Language|Symbol
---|---
C|`void UnloadMaterial(Material material);`
Swift|*unimplemented*
#### SetMaterialTexture
Set texture for a material map type (MATERIAL_MAP_DIFFUSE, MATERIAL_MAP_SPECULAR...)
Language|Symbol
---|---
C|`void SetMaterialTexture(Material *material, int mapType, Texture2D texture);`
Swift|*unimplemented*
#### SetModelMeshMaterial
Set material for a mesh
Language|Symbol
---|---
C|`void SetModelMeshMaterial(Model *model, int meshId, int materialId);`
Swift|*unimplemented*
### Model animations loading/unloading functions
```c
ModelAnimation *LoadModelAnimations(const char *fileName, unsigned int *animCount); // Load model animations from file
void UpdateModelAnimation(Model model, ModelAnimation anim, int frame);             // Update model animation pose
void UnloadModelAnimation(ModelAnimation anim);                                     // Unload animation data
void UnloadModelAnimations(ModelAnimation *animations, unsigned int count);         // Unload animation array data
bool IsModelAnimationValid(Model model, ModelAnimation anim);                       // Check model animation skeleton match
```
#### LoadModelAnimations
Load model animations from file
Language|Symbol
---|---
C|`ModelAnimation *LoadModelAnimations(const char *fileName, unsigned int *animCount);`
Swift|*unimplemented*
#### UpdateModelAnimation
Update model animation pose
Language|Symbol
---|---
C|`void UpdateModelAnimation(Model model, ModelAnimation anim, int frame);`
Swift|*unimplemented*
#### UnloadModelAnimation
Unload animation data
Language|Symbol
---|---
C|`void UnloadModelAnimation(ModelAnimation anim);`
Swift|*unimplemented*
#### UnloadModelAnimations
Unload animation array data
Language|Symbol
---|---
C|`void UnloadModelAnimations(ModelAnimation *animations, unsigned int count);`
Swift|*unimplemented*
#### IsModelAnimationValid
Check model animation skeleton match
Language|Symbol
---|---
C|`bool IsModelAnimationValid(Model model, ModelAnimation anim);`
Swift|*unimplemented*
### Collision detection functions
```c
bool CheckCollisionSpheres(Vector3 center1, float radius1, Vector3 center2, float radius2); // Check collision between two spheres
bool CheckCollisionBoxes(BoundingBox box1, BoundingBox box2);                               // Check collision between two bounding boxes
bool CheckCollisionBoxSphere(BoundingBox box, Vector3 center, float radius);                // Check collision between box and sphere
RayCollision GetRayCollisionSphere(Ray ray, Vector3 center, float radius);                  // Get collision info between ray and sphere
RayCollision GetRayCollisionBox(Ray ray, BoundingBox box);                                  // Get collision info between ray and box
RayCollision GetRayCollisionMesh(Ray ray, Mesh mesh, Matrix transform);                     // Get collision info between ray and mesh
RayCollision GetRayCollisionTriangle(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3);          // Get collision info between ray and triangle
RayCollision GetRayCollisionQuad(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3, Vector3 p4);  // Get collision info between ray and quad
```
#### CheckCollisionSpheres
Check collision between two spheres
Language|Symbol
---|---
C|`bool CheckCollisionSpheres(Vector3 center1, float radius1, Vector3 center2, float radius2);`
Swift|*unimplemented*
#### CheckCollisionBoxes
Check collision between two bounding boxes
Language|Symbol
---|---
C|`bool CheckCollisionBoxes(BoundingBox box1, BoundingBox box2);`
Swift|*unimplemented*
#### CheckCollisionBoxSphere
Check collision between box and sphere
Language|Symbol
---|---
C|`bool CheckCollisionBoxSphere(BoundingBox box, Vector3 center, float radius);`
Swift|*unimplemented*
#### GetRayCollisionSphere
Get collision info between ray and sphere
Language|Symbol
---|---
C|`RayCollision GetRayCollisionSphere(Ray ray, Vector3 center, float radius);`
Swift|*unimplemented*
#### GetRayCollisionBox
Get collision info between ray and box
Language|Symbol
---|---
C|`RayCollision GetRayCollisionBox(Ray ray, BoundingBox box);`
Swift|*unimplemented*
#### GetRayCollisionMesh
Get collision info between ray and mesh
Language|Symbol
---|---
C|`RayCollision GetRayCollisionMesh(Ray ray, Mesh mesh, Matrix transform);`
Swift|*unimplemented*
#### GetRayCollisionTriangle
Get collision info between ray and triangle
Language|Symbol
---|---
C|`RayCollision GetRayCollisionTriangle(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3);`
Swift|*unimplemented*
#### GetRayCollisionQuad
Get collision info between ray and quad
Language|Symbol
---|---
C|`RayCollision GetRayCollisionQuad(Ray ray, Vector3 p1, Vector3 p2, Vector3 p3, Vector3 p4);`
Swift|*unimplemented*
## Audio Loading and Playing Functions (Module: audio)
### Audio device management functions
```c
void InitAudioDevice(void);         // Initialize audio device and context
void CloseAudioDevice(void);        // Close the audio device and context
bool IsAudioDeviceReady(void);      // Check if audio device has been initialized successfully
void SetMasterVolume(float volume); // Set master volume (listener)
```
#### InitAudioDevice
Initialize audio device and context
Language|Symbol
---|---
C|`void InitAudioDevice(void);`
Swift|*unimplemented*
#### CloseAudioDevice
Close the audio device and context
Language|Symbol
---|---
C|`void CloseAudioDevice(void);`
Swift|*unimplemented*
#### IsAudioDeviceReady
Check if audio device has been initialized successfully
Language|Symbol
---|---
C|`bool IsAudioDeviceReady(void);`
Swift|*unimplemented*
#### SetMasterVolume
Set master volume (listener)
Language|Symbol
---|---
C|`void SetMasterVolume(float volume);`
Swift|*unimplemented*
### Wave/Sound loading/unloading functions
```c
Wave LoadWave(const char *fileName);                                                        // Load wave data from file
Wave LoadWaveFromMemory(const char *fileType, const unsigned char *fileData, int dataSize); // Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
bool IsWaveReady(Wave wave);                                                                // Checks if wave data is ready
Sound LoadSound(const char *fileName);                                                      // Load sound from file
Sound LoadSoundFromWave(Wave wave);                                                         // Load sound from wave data
bool IsSoundReady(Sound sound);                                                             // Checks if a sound is ready
void UpdateSound(Sound sound, const void *data, int sampleCount);                           // Update sound buffer with new data
void UnloadWave(Wave wave);                                                                 // Unload wave data
void UnloadSound(Sound sound);                                                              // Unload sound
bool ExportWave(Wave wave, const char *fileName);                                           // Export wave data to file, returns true on success
bool ExportWaveAsCode(Wave wave, const char *fileName);                                     // Export wave sample data to code (.h), returns true on success
```
#### LoadWave
Load wave data from file
Language|Symbol
---|---
C|`Wave LoadWave(const char *fileName);`
Swift|*unimplemented*
#### LoadWaveFromMemory
Load wave from memory buffer, fileType refers to extension: i.e. '.wav'
Language|Symbol
---|---
C|`Wave LoadWaveFromMemory(const char *fileType, const unsigned char *fileData, int dataSize);`
Swift|*unimplemented*
#### IsWaveReady
Checks if wave data is ready
Language|Symbol
---|---
C|`bool IsWaveReady(Wave wave);`
Swift|*unimplemented*
#### LoadSound
Load sound from file
Language|Symbol
---|---
C|`Sound LoadSound(const char *fileName);`
Swift|*unimplemented*
#### LoadSoundFromWave
Load sound from wave data
Language|Symbol
---|---
C|`Sound LoadSoundFromWave(Wave wave);`
Swift|*unimplemented*
#### IsSoundReady
Checks if a sound is ready
Language|Symbol
---|---
C|`bool IsSoundReady(Sound sound);`
Swift|*unimplemented*
#### UpdateSound
Update sound buffer with new data
Language|Symbol
---|---
C|`void UpdateSound(Sound sound, const void *data, int sampleCount);`
Swift|*unimplemented*
#### UnloadWave
Unload wave data
Language|Symbol
---|---
C|`void UnloadWave(Wave wave);`
Swift|*unimplemented*
#### UnloadSound
Unload sound
Language|Symbol
---|---
C|`void UnloadSound(Sound sound);`
Swift|*unimplemented*
#### ExportWave
Export wave data to file, returns true on success
Language|Symbol
---|---
C|`bool ExportWave(Wave wave, const char *fileName);`
Swift|*unimplemented*
#### ExportWaveAsCode
Export wave sample data to code (.h), returns true on success
Language|Symbol
---|---
C|`bool ExportWaveAsCode(Wave wave, const char *fileName);`
Swift|*unimplemented*
### Wave/Sound management functions
```c
void PlaySound(Sound sound);                                               // Play a sound
void StopSound(Sound sound);                                               // Stop playing a sound
void PauseSound(Sound sound);                                              // Pause a sound
void ResumeSound(Sound sound);                                             // Resume a paused sound
void PlaySoundMulti(Sound sound);                                          // Play a sound (using multichannel buffer pool)
void StopSoundMulti(void);                                                 // Stop any sound playing (using multichannel buffer pool)
int GetSoundsPlaying(void);                                                // Get number of sounds playing in the multichannel
bool IsSoundPlaying(Sound sound);                                          // Check if a sound is currently playing
void SetSoundVolume(Sound sound, float volume);                            // Set volume for a sound (1.0 is max level)
void SetSoundPitch(Sound sound, float pitch);                              // Set pitch for a sound (1.0 is base level)
void SetSoundPan(Sound sound, float pan);                                  // Set pan for a sound (0.5 is center)
Wave WaveCopy(Wave wave);                                                  // Copy a wave to a new wave
void WaveCrop(Wave *wave, int initSample, int finalSample);                // Crop a wave to defined samples range
void WaveFormat(Wave *wave, int sampleRate, int sampleSize, int channels); // Convert wave data to desired format
float *LoadWaveSamples(Wave wave);                                         // Load samples data from wave as a 32bit float data array
void UnloadWaveSamples(float *samples);                                    // Unload samples data loaded with LoadWaveSamples()
```
#### PlaySound
Play a sound
Language|Symbol
---|---
C|`void PlaySound(Sound sound);`
Swift|*unimplemented*
#### StopSound
Stop playing a sound
Language|Symbol
---|---
C|`void StopSound(Sound sound);`
Swift|*unimplemented*
#### PauseSound
Pause a sound
Language|Symbol
---|---
C|`void PauseSound(Sound sound);`
Swift|*unimplemented*
#### ResumeSound
Resume a paused sound
Language|Symbol
---|---
C|`void ResumeSound(Sound sound);`
Swift|*unimplemented*
#### PlaySoundMulti
Play a sound (using multichannel buffer pool)
Language|Symbol
---|---
C|`void PlaySoundMulti(Sound sound);`
Swift|*unimplemented*
#### StopSoundMulti
Stop any sound playing (using multichannel buffer pool)
Language|Symbol
---|---
C|`void StopSoundMulti(void);`
Swift|*unimplemented*
#### GetSoundsPlaying
Get number of sounds playing in the multichannel
Language|Symbol
---|---
C|`int GetSoundsPlaying(void);`
Swift|*unimplemented*
#### IsSoundPlaying
Check if a sound is currently playing
Language|Symbol
---|---
C|`bool IsSoundPlaying(Sound sound);`
Swift|*unimplemented*
#### SetSoundVolume
Set volume for a sound (1.0 is max level)
Language|Symbol
---|---
C|`void SetSoundVolume(Sound sound, float volume);`
Swift|*unimplemented*
#### SetSoundPitch
Set pitch for a sound (1.0 is base level)
Language|Symbol
---|---
C|`void SetSoundPitch(Sound sound, float pitch);`
Swift|*unimplemented*
#### SetSoundPan
Set pan for a sound (0.5 is center)
Language|Symbol
---|---
C|`void SetSoundPan(Sound sound, float pan);`
Swift|*unimplemented*
#### WaveCopy
Copy a wave to a new wave
Language|Symbol
---|---
C|`Wave WaveCopy(Wave wave);`
Swift|*unimplemented*
#### WaveCrop
Crop a wave to defined samples range
Language|Symbol
---|---
C|`void WaveCrop(Wave *wave, int initSample, int finalSample);`
Swift|*unimplemented*
#### WaveFormat
Convert wave data to desired format
Language|Symbol
---|---
C|`void WaveFormat(Wave *wave, int sampleRate, int sampleSize, int channels);`
Swift|*unimplemented*
#### LoadWaveSamples
Load samples data from wave as a 32bit float data array
Language|Symbol
---|---
C|`float *LoadWaveSamples(Wave wave);`
Swift|*unimplemented*
#### UnloadWaveSamples
Unload samples data loaded with LoadWaveSamples()
Language|Symbol
---|---
C|`void UnloadWaveSamples(float *samples);`
Swift|*unimplemented*
### Music management functions
```c
Music LoadMusicStream(const char *fileName);                                                    // Load music stream from file
Music LoadMusicStreamFromMemory(const char *fileType, const unsigned char *data, int dataSize); // Load music stream from data
bool IsMusicReady(Music music);                                                                 // Checks if a music stream is ready
void UnloadMusicStream(Music music);                                                            // Unload music stream
void PlayMusicStream(Music music);                                                              // Start music playing
bool IsMusicStreamPlaying(Music music);                                                         // Check if music is playing
void UpdateMusicStream(Music music);                                                            // Updates buffers for music streaming
void StopMusicStream(Music music);                                                              // Stop music playing
void PauseMusicStream(Music music);                                                             // Pause music playing
void ResumeMusicStream(Music music);                                                            // Resume playing paused music
void SeekMusicStream(Music music, float position);                                              // Seek music to a position (in seconds)
void SetMusicVolume(Music music, float volume);                                                 // Set volume for music (1.0 is max level)
void SetMusicPitch(Music music, float pitch);                                                   // Set pitch for a music (1.0 is base level)
void SetMusicPan(Music music, float pan);                                                       // Set pan for a music (0.5 is center)
float GetMusicTimeLength(Music music);                                                          // Get music time length (in seconds)
float GetMusicTimePlayed(Music music);                                                          // Get current music time played (in seconds)
```
#### LoadMusicStream
Load music stream from file
Language|Symbol
---|---
C|`Music LoadMusicStream(const char *fileName);`
Swift|*unimplemented*
#### LoadMusicStreamFromMemory
Load music stream from data
Language|Symbol
---|---
C|`Music LoadMusicStreamFromMemory(const char *fileType, const unsigned char *data, int dataSize);`
Swift|*unimplemented*
#### IsMusicReady
Checks if a music stream is ready
Language|Symbol
---|---
C|`bool IsMusicReady(Music music);`
Swift|*unimplemented*
#### UnloadMusicStream
Unload music stream
Language|Symbol
---|---
C|`void UnloadMusicStream(Music music);`
Swift|*unimplemented*
#### PlayMusicStream
Start music playing
Language|Symbol
---|---
C|`void PlayMusicStream(Music music);`
Swift|*unimplemented*
#### IsMusicStreamPlaying
Check if music is playing
Language|Symbol
---|---
C|`bool IsMusicStreamPlaying(Music music);`
Swift|*unimplemented*
#### UpdateMusicStream
Updates buffers for music streaming
Language|Symbol
---|---
C|`void UpdateMusicStream(Music music);`
Swift|*unimplemented*
#### StopMusicStream
Stop music playing
Language|Symbol
---|---
C|`void StopMusicStream(Music music);`
Swift|*unimplemented*
#### PauseMusicStream
Pause music playing
Language|Symbol
---|---
C|`void PauseMusicStream(Music music);`
Swift|*unimplemented*
#### ResumeMusicStream
Resume playing paused music
Language|Symbol
---|---
C|`void ResumeMusicStream(Music music);`
Swift|*unimplemented*
#### SeekMusicStream
Seek music to a position (in seconds)
Language|Symbol
---|---
C|`void SeekMusicStream(Music music, float position);`
Swift|*unimplemented*
#### SetMusicVolume
Set volume for music (1.0 is max level)
Language|Symbol
---|---
C|`void SetMusicVolume(Music music, float volume);`
Swift|*unimplemented*
#### SetMusicPitch
Set pitch for a music (1.0 is base level)
Language|Symbol
---|---
C|`void SetMusicPitch(Music music, float pitch);`
Swift|*unimplemented*
#### SetMusicPan
Set pan for a music (0.5 is center)
Language|Symbol
---|---
C|`void SetMusicPan(Music music, float pan);`
Swift|*unimplemented*
#### GetMusicTimeLength
Get music time length (in seconds)
Language|Symbol
---|---
C|`float GetMusicTimeLength(Music music);`
Swift|*unimplemented*
#### GetMusicTimePlayed
Get current music time played (in seconds)
Language|Symbol
---|---
C|`float GetMusicTimePlayed(Music music);`
Swift|*unimplemented*
### AudioStream management functions
```c
AudioStream LoadAudioStream(unsigned int sampleRate, unsigned int sampleSize, unsigned int channels); // Load audio stream (to stream raw audio pcm data)
bool IsAudioStreamReady(AudioStream stream);                                                          // Checks if an audio stream is ready
void UnloadAudioStream(AudioStream stream);                                                           // Unload audio stream and free memory
void UpdateAudioStream(AudioStream stream, const void *data, int frameCount);                         // Update audio stream buffers with data
bool IsAudioStreamProcessed(AudioStream stream);                                                      // Check if any audio stream buffers requires refill
void PlayAudioStream(AudioStream stream);                                                             // Play audio stream
void PauseAudioStream(AudioStream stream);                                                            // Pause audio stream
void ResumeAudioStream(AudioStream stream);                                                           // Resume audio stream
bool IsAudioStreamPlaying(AudioStream stream);                                                        // Check if audio stream is playing
void StopAudioStream(AudioStream stream);                                                             // Stop audio stream
void SetAudioStreamVolume(AudioStream stream, float volume);                                          // Set volume for audio stream (1.0 is max level)
void SetAudioStreamPitch(AudioStream stream, float pitch);                                            // Set pitch for audio stream (1.0 is base level)
void SetAudioStreamPan(AudioStream stream, float pan);                                                // Set pan for audio stream (0.5 is centered)
void SetAudioStreamBufferSizeDefault(int size);                                                       // Default size for new audio streams
void SetAudioStreamCallback(AudioStream stream, AudioCallback callback);                              // Audio thread callback to request new data
void AttachAudioStreamProcessor(AudioStream stream, AudioCallback processor);                         // Attach audio stream processor to stream
void DetachAudioStreamProcessor(AudioStream stream, AudioCallback processor);                         // Detach audio stream processor from stream
void AttachAudioMixedProcessor(AudioCallback processor);                                              // Attach audio stream processor to the entire audio pipeline
void DetachAudioMixedProcessor(AudioCallback processor);                                              // Detach audio stream processor from the entire audio pipeline
```
#### LoadAudioStream
Load audio stream (to stream raw audio pcm data)
Language|Symbol
---|---
C|`AudioStream LoadAudioStream(unsigned int sampleRate, unsigned int sampleSize, unsigned int channels);`
Swift|*unimplemented*
#### IsAudioStreamReady
Checks if an audio stream is ready
Language|Symbol
---|---
C|`bool IsAudioStreamReady(AudioStream stream);`
Swift|*unimplemented*
#### UnloadAudioStream
Unload audio stream and free memory
Language|Symbol
---|---
C|`void UnloadAudioStream(AudioStream stream);`
Swift|*unimplemented*
#### UpdateAudioStream
Update audio stream buffers with data
Language|Symbol
---|---
C|`void UpdateAudioStream(AudioStream stream, const void *data, int frameCount);`
Swift|*unimplemented*
#### IsAudioStreamProcessed
Check if any audio stream buffers requires refill
Language|Symbol
---|---
C|`bool IsAudioStreamProcessed(AudioStream stream);`
Swift|*unimplemented*
#### PlayAudioStream
Play audio stream
Language|Symbol
---|---
C|`void PlayAudioStream(AudioStream stream);`
Swift|*unimplemented*
#### PauseAudioStream
Pause audio stream
Language|Symbol
---|---
C|`void PauseAudioStream(AudioStream stream);`
Swift|*unimplemented*
#### ResumeAudioStream
Resume audio stream
Language|Symbol
---|---
C|`void ResumeAudioStream(AudioStream stream);`
Swift|*unimplemented*
#### IsAudioStreamPlaying
Check if audio stream is playing
Language|Symbol
---|---
C|`bool IsAudioStreamPlaying(AudioStream stream);`
Swift|*unimplemented*
#### StopAudioStream
Stop audio stream
Language|Symbol
---|---
C|`void StopAudioStream(AudioStream stream);`
Swift|*unimplemented*
#### SetAudioStreamVolume
Set volume for audio stream (1.0 is max level)
Language|Symbol
---|---
C|`void SetAudioStreamVolume(AudioStream stream, float volume);`
Swift|*unimplemented*
#### SetAudioStreamPitch
Set pitch for audio stream (1.0 is base level)
Language|Symbol
---|---
C|`void SetAudioStreamPitch(AudioStream stream, float pitch);`
Swift|*unimplemented*
#### SetAudioStreamPan
Set pan for audio stream (0.5 is centered)
Language|Symbol
---|---
C|`void SetAudioStreamPan(AudioStream stream, float pan);`
Swift|*unimplemented*
#### SetAudioStreamBufferSizeDefault
Default size for new audio streams
Language|Symbol
---|---
C|`void SetAudioStreamBufferSizeDefault(int size);`
Swift|*unimplemented*
#### SetAudioStreamCallback
Audio thread callback to request new data
Language|Symbol
---|---
C|`void SetAudioStreamCallback(AudioStream stream, AudioCallback callback);`
Swift|*unimplemented*
#### AttachAudioStreamProcessor
Attach audio stream processor to stream
Language|Symbol
---|---
C|`void AttachAudioStreamProcessor(AudioStream stream, AudioCallback processor);`
Swift|*unimplemented*
#### DetachAudioStreamProcessor
Detach audio stream processor from stream
Language|Symbol
---|---
C|`void DetachAudioStreamProcessor(AudioStream stream, AudioCallback processor);`
Swift|*unimplemented*
#### AttachAudioMixedProcessor
Attach audio stream processor to the entire audio pipeline
Language|Symbol
---|---
C|`void AttachAudioMixedProcessor(AudioCallback processor);`
Swift|*unimplemented*
#### DetachAudioMixedProcessor
Detach audio stream processor from the entire audio pipeline
Language|Symbol
---|---
C|`void DetachAudioMixedProcessor(AudioCallback processor);`
Swift|*unimplemented*
