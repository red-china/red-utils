Red [
    Title:   "capitalize example"
    Version: 0.0.1
    Author:  "pixcai<pixcai@163.com>"
    File:    %capitalize.red
    Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
    License: "GPL-3.0"
]

#include %../capitalize.red

data1: "caPitaLize"                 ;-- string!
data2: %capitalize.red              ;-- file!
data3: http://capitalize.example    ;-- url!
data4: capitalize@example.com       ;-- email!

probe capitalize data1
probe capitalize data2
probe capitalize data3
probe capitalize data4
