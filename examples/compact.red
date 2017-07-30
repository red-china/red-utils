Red [
    Title:   "compact function"
    Version: 0.0.1
    Author:  "pixcai<pixcai@163.com>"
    File:    %compact.red
    Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
    License: "GPL-3.0"
]

#include %../compact.red

data1: [0 1 'A #"^@" "C"]
data2: [0 1 false true no yes off on ["A" "B"] [] #(A B) #()]

probe compact data1
probe compact data2
