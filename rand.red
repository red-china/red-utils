Red [
    Title:   "rand function"
    Version: 0.0.1
    Author:  "pixcai<pixcai@163.com>"
    File:    %rand.red
    Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
    License: "GPL-3.0"
]

#include %range.red

rand: func [
    return:    [any-type!]
    /range
        min    [number!]
        max    [number!]
    /only
        series [series!]
][
    random/seed to-integer now

    either range [min + random (max - min)][
        either only [random/only series][random/only 0 ... 1]
    ]
]
