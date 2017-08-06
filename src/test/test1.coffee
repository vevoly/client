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
isStudent = 10 < aqe < 25

# 数组
arr = {1, 3, 5, 7, 9}
for item in arr
  console.log(item)

# while
console.log(arr.pop()) while arr.length() > 0