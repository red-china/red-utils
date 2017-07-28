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
	action        [action! function!]
	block         [block!]
	return:       [block!]
	/every
	/local
		position  [map!]
		duplicate [block!]
		value     [block!]
		result    [block!]
][
	position: #(current: 1 start: 1 end: 0)
	duplicate: copy block

	foreach map-value block [
		either every [
			if block? map-value [
				result: flatten map-value
				position/end: max length? result position/end
				replace duplicate reduce [map-value] reduce [result]
			]
		][
			result: do [action map-value]
			replace duplicate reduce [map-value] result
		]
	]
	if not every [return duplicate]

	result: copy []

	while [position/current <= position/end][
		position/start: 1
		value: copy [action]
		while [position/start <= length? duplicate][
			either block? duplicate/(position/start) [
				either duplicate/(position/start)/(position/current) = none [
					append/only value []
				][
					append value duplicate/(position/start)/(position/current)
				]
			][
				append value duplicate/(position/start)
			]
			position/start: position/start + 1
		]
		repend result value
		position/current: position/current + 1
	]

	result
]

comment {
	data1: [65 66 67 68 69 70]
	data2: [["a" "b"] ["c" "d"]]

	probe map :to-char data1
	probe map/every :append data2
}
