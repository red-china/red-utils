Red [
	Title:   "map function"
	Version: 0.0.1
	Author:  "pixcai<pixcai@163.com>"
	File:    %map.red
	Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
	License: "GPL-3.0"
]

#include %flatten.red

map: func [
	action     [action! function!]
	block      [block!]
	return:    [block!]
	/local
	    result [block!]
	    value
][
	result: copy []

	foreach value block [repend result [action value]]

	result
]
