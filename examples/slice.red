Red [
    Title:   "slice function"
    Version: 0.0.1
    Author:  "pixcai<pixcai@163.com>"
    File:    %slice.red
    Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
    License: "GPL-3.0"
]

#include %../slice.red

data1: [1 2 [A B] C 3]
data2: %slice.red
data3: http://slice.red

probe slice data1 2 4
probe slice data2 3 7
probe slice data3 1 (length? data3) - 2
