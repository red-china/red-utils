# red-utils
The utility function set for Red programming language.

# functions
About how to use, please see examples folder.

- flatten
```red
  >> flatten [1 [2 [3 4] 5] 6 [7 8] 9]
  == [1 2 3 4 5 6 7 8 9]
```
- map
```red
  >> map :to-char [65 66 67 68 69]
  == [#"A" #"B" #"C" #"D" #"E"]
```
- merge
```red
  >> merge [1 [2 3] 4] ["A" "B" "C" "D"]
  == [[1 "A"] [[2 3] "B"] [4 "C"] "D"]
```
- capitalize
```red
  >> capitalize "who are you?"
  == "Who are you?"
```
- fill
```red
  >> fill 0 6
  == [0 0 0 0 0 0]
```
- compact
```red
  >> compact [1 false true no yes "" [] %test.red ["A"] none #"^@"]
  == [1 true yes %test.red ["A"] #"^@"]
```
- slice
```red
  >> slice ["A" "B" "C" "D"] 2 4
  == ["B" "C"]
  >> slice %test.red 1 7
  == %test.r
```