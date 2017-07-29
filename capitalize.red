Red [
    Title:   "capitalize function"
    Version: 0.0.1
    Author:  "pixcai<pixcai@163.com>"
    File:    %capitalize.red
    Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
    License: "GPL-3.0"
]

capitalize: func [
    string  [any-string!]
    return: [any-string!]
][
    make type? string rejoin [uppercase first string lowercase next string]
]
