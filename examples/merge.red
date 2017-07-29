Red [
    Title:   "merge example"
    Version: 0.0.1
    Author:  "pixcai<pixcai@163.com>"
    File:    %merge.red
    Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
    License: "GPL-3.0"
]

#include %../merge.red

data1: [1 2 3 4]
data2: ["A" "B" "C" "D"]
data3: [[1 2]]
data4: [["A" "B"] "C" ["D"]]

probe merge data1 data2
probe merge data3 data4
