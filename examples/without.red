Red [
    Title:   "without example"
    Version: 0.0.1
    Author:  "pixcai<pixcai@163.com>"
    File:    %without.red
    Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
    License: "GPL-3.0"
]

#include %../without.red

data1: http://google.com
data2: [1 "ABC" [a b c] true]
data3: "Hello, Google"

probe without data1 ["g" "e"]
probe without data2 [[a b c]]
probe without data3 ["l" "e"]
