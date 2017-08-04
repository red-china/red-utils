Red [
  Title:   "without function"
  Version: 0.0.1
  Author:  "pixcai<pixcai@163.com>"
  File:    %without.red
  Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
  License: "GPL-3.0"
]

without: func [
  series     [series!]
  values     [block!]
  return:    [series!]
  /local
      result [series!]
      found  [series!]
      value
][
  result: copy/deep series

  foreach value values [
    found: find/case result value
    if found [
      loop length? value [remove found]
    ]
  ]

  result
]
