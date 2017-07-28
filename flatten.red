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
][
	result: copy []

	foreach flatten-value block [
		either not block? flatten-value [
			append result flatten-value
		][
			repend result flatten flatten-value
		]
	]

	result
]

comment {
	data: [1 [#"a" [127.0.0.1] #"b"] %flatten.red [#(c d) "end"]]

	probe flatten data
}
