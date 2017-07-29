Red [
	Title:   "flatten function"
	Version: 0.0.1
	Author:  "pixcai<pixcai@163.com>"
	File:    %flatten.red
	Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
	License: "GPL-3.0"
]

flatten: func [
	block      [block!]
	return:    [block!]
	/local
	    result [block!]
	    value
][
	result: copy []

	foreach value block [
		either block? value [repend result flatten value][append result value]
	]

	result
]
