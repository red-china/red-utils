Red [
    Title:   "flatten example"
    Version: 0.0.1
    Author:  "pixcai<pixcai@163.com>"
    File:    %flatten.red
    Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
    License: "GPL-3.0"
]

#include %../flatten.red

data1: [1 2.0 #"3" "4" #(5 6)]
data2: ["A" ["B" ["C" "D"] "E"] "F"]
data3: [[1 "A"] [2 [3 4] 5] [["B"] ["C"] ["D"] ["E"]] [[[6 "E"]]]]

probe flatten data1
probe flatten data2
probe flatten data3
