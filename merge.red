Red [
	Title:   "merge function"
	Version: 0.0.1
	Author:  "pixcai<pixcai@163.com>"
	File:    %merge.red
	Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
	License: "GPL-3.0"
]

merge: func [
	block1          [block!]
	block2          [block!]
	return:         [block!]
	/local
	    result      [block!]
	    index       [integer!]
][
	result: copy []
	index: 1

	while [not all [none? block1/:index none? block2/:index]] [
		if not none? block1/:index [
			append/only result copy/deep reduce [block1/:index]
		]
		if not none? block2/:index [
			either none? result/:index [
				append/only result copy/deep reduce [block2/:index]
			][
				append result/:index copy/deep reduce [block2/:index]
			]
		]
		index: index + 1
	]
	
	result
]
