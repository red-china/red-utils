Red [
	Title:   "merge function"
	Version: 0.0.1
	Author:  "pixcai<pixcai@163.com>"
	File:    %merge.red
	Rights:  "Copyright (c) 2017 pixcai. All rights reserved."
	License: "GPL-3.0"
]

#include %map.red

merge: func [
	block1         [block!]
	block2         [block!]
	return:        [block!]
	/local
		merge-from [function!]
][
	merge-from: func [
		a [any-type!]
		b [any-type!]
	][
		repend copy [] [a b]
	]

	map/every :merge-from reduce [block1 block2]
]

comment {
	data1: [1 2 3]
	data2: ["A" "B" "C"]

	probe merge data1 data2
}
