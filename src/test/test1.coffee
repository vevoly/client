### 变量赋值 ###
num = 1
isRight = true
age = 20

# 对象
obj =
  a: 5
  b: 'str'
  c: false
  d: 22
  e: 23
  fun: ->
    @a

# 函数
func = ->
  obj.a + num
console.log("func() result = " + func())

# 函数默认值
func2 = (name, age = 20) ->
  console.log(name + " " + age)

# 简单if
str = 'str'
str += 'abc' if isRight

# 标准if
if str is 'str'
  str += 'abc'
else if str is 'abc'
  str += 'str'

# 区间判断
isStudent = 10 < age < 25

# 数组
arr = [1, 3, 5, 7, 9]
console.log("遍历数组:")
for item in arr
  console.log(item)

# while
console.log("while遍历：")
console.log(arr.pop()) while arr.length > 0

# 推导
obj2 =
  key: 'abd'
  value: 'def'
  class: 'This is class'
console.log key, value for key, value of obj2 when key isnt 'key'

# 存在处理
nullStr = null
if nullStr?
  console.log "nullStr is null"

# 如果null或者undefined， 那么赋值
str?= "AA"

# 内嵌js
func3 = `function abc(){console.log("This is func3")}`
func3()

# try
###try
  zzz
catch e
  console.log "打印错误信息"
  console.log e
finally
  console.log "final"###
