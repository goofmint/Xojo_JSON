# Xojo JSONクラス

JSONを扱いやすくするためのクラスです。キーチェーンメソッドでつなげて指定できるので中間の変数を省略できます。あらかじめ返ってくる型が分かっている必要があります。

## 使い方

```
Dim json as JSON = new JSON(swagger)

System.DebugLog(json.s("swagger"))

System.DebugLog(json.o("info").s("description"))

// 配列の場合のみ一度取り出す必要あり
Dim childJson() as JSON = json.o("paths").o("/pet").o("post").a("tags")
System.DebugLog(childJson(0).s())

// またはインデックスを指定する
System.DebugLog(json.o("paths").o("/pet").o("post").a("tags", 0).s())
```

## メソッド

### a

JSONインスタンスの配列を返します。

#### インデックスを指定した場合

JSONインスタンスを返します。

### b

真偽値を返します。

### n

数値（Double）を返します。

### s

文字列を返します。

### o

JSONインスタンスを返します。

## License

MIT License
