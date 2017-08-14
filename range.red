Red [
    Title:   "range function"
    Version: 0.0.1
    Author:  "pixcai<pixcai@163.com>"
    File:    %range.red
    Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
    License: "GPL-3.0"
]

range: func [
    start      [number!]
    end        [number!]
    step       [number!]
    return:    [block!]
    /local
        result [block!]
][
    result: copy []

    until [
        append result start
        start: start + step
        start > end
    ]

    result
]

..: make op! func [
    start   [number!]
    end     [number!]
    return: [block!]
][
    range start end 1
]

...: make op! func [
    start   [number!]
    end     [number!]
    return: [block!]
][
    range start end 0.1
]
