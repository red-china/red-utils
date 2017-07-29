Red [
    Title:   "map example"
    Version: 0.0.1
    Author:  "pixcai<pixcai@163.com>"
    File:    %map.red
    Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
    License: "GPL-3.0"
]

#include %../map.red

data1: [65 66 67 68 69 70]
data2: [["a" "b"] ["c" "d"]]

probe map :to-char data1
probe map :rejoin data2
