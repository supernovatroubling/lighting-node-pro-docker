Lighting Node Pro
=================

Image based of benburkhart1/lighting-node-pro repository (https://github.com/benburkhart1/lighting-node-pro)

#### What is lighting-node-pro?


This README will guide you through running lighting-node-pro with Docker Containers.

#### QuickStart

Step - 1 : Find USB device address of the node pro With Linux use "lsusb" and look for a device listed as corsair and note the Bus and Device number for example mine is "Bus 002 Device 002: ID 1b1c:0c0b Corsair" so i would use "--device /dev/bus/usb/002/002" to pass through the controller without privileged mode enabled

Step - 2 : Set the fan count Use "-e fan-count=" to set how many fans you have, it defaults to 3.

Step - 3 : Set the colour Use "-e colors=" to set the colour, it defaults to red. If you have multiple fans you can set them individually e.g. "red,white,blue" if you have 3 fans

step - 4 : put it all together "docker run -e fan-count=3 -e colors=red,white,blue --device=/dev/bus/usb/002/002 lighting-node-pro"

#### Optional setting

Animation

Use "-e animation=" to set an animation, when you set the animation the colours option is ignored, you can choose from Tracer ColorWheel StopLight RedBlueCollision

Framerate

Use "-e framerate=" to set the frame rate of the animation.

Colour options

aliceblue antiquewhite aqua aquamarine azure beige bisque black blanchedalmond blue blueviolet brown burlywood cadetblue chartreuse chocolate coral cornflowerblue cornsilk crimson cyan darkblue darkcyan darkgoldenrod darkgray darkgreen darkkhaki darkmagenta darkolivegreen darkorange darkorchid darkred darksalmon darkseagreen darkslateblue darkslategray darkturquoise darkviolet deeppink deepskyblue dimgray dodgerblue feldspar firebrick floralwhite forestgreen fuchsia gainsboro ghostwhite gold goldenrod gray green greenyellow honeydew hotpink indianred indigo ivory khaki lavender lavenderblush lawngreen lemonchiffon lightblue lightcoral lightcyan lightgoldenrodyellow lightgrey lightgreen lightpink lightsalmon lightseagreen lightskyblue lightslateblue lightslategray lightsteelblue lightyellow lime limegreen linen magenta maroon mediumaquamarine mediumblue mediumorchid mediumpurple mediumseagreen mediumslateblue mediumspringgreen mediumturquoise mediumvioletred midnightblue mintcream mistyrose moccasin navajowhite navy oldlace olive olivedrab orange orangered orchid palegoldenrod palegreen paleturquoise palevioletred papayawhip peachpuff peru pink plum powderblue purple red rosybrown royalblue saddlebrown salmon sandybrown seagreen seashell sienna silver skyblue slateblue slategray snow springgreen steelblue tan teal thistle tomato turquoise violet violetred wheat white whitesmoke yellow yellowgreen


