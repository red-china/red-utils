Red [
    Title:   "slice function"
    Version: 0.0.1
    Author:  "pixcai<pixcai@163.com>"
    File:    %slice.red
    Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
    License: "GPL-3.0"
]

slice: func [
    series     [series!]
    start      [integer!]
    end        [integer!]
    return:    [series!]
    /local
        result [series!]
][
    result: reverse copy/deep skip series start - 1

    loop (length? series) - end [take result]

    reverse result
]
