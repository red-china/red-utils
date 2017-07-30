Red [
    Title:   "fill function"
    Version: 0.0.1
    Author:  "pixcai<pixcai@163.com>"
    File:    %fill.red
    Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
    License: "GPL-3.0"
]

fill: func [
    value      [any-type!]
    count      [integer!]
    return:    [block!]
    /local
        result [block!]
][
    result: copy []

    loop count [append result copy/deep reduce [value]]

    result
]
