Red [
    Title:   "compact function"
    Version: 0.0.1
    Author:  "pixcai<pixcai@163.com>"
    File:    %compact.red
    Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
    License: "GPL-3.0"
]

compact: func [
    block      [block!]
    /local
        result [block!]
        value
][
    result: copy []

    foreach value block [
        either word? value [
            if not any [value = 'false value = 'off value = 'no] [
                append result value
            ]
        ][
            if any [block? value map? value] [
                if 0 = length? value [continue]
            ]
            append result copy/deep reduce [value]
        ]
    ]

    result
]
