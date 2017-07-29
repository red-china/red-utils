Red [
    Title:   "capitalize function"
    Version: 0.0.1
    Author:  "pixcai<pixcai@163.com>"
    File:    %capitalize.red
    Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
    License: "GPL-3.0"
]

capitalize: func [
    string     [any-string!]
    return:    [any-string!]
    /local
        result [any-string!]
][
    result: copy string

    replace result first result uppercase first result
    replace result next result lowercase copy next result
]
