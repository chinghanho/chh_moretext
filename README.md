# ChhMoretext

Generate random Traditional Chinese text from Moretext API.

透過 [Handlino][handlino] 的 [Moretext API][moretext-api] 產生隨機中文句子或段落。

[handlino]: http://handlino.com/
[moretext-api]: http://more.handlino.com/api

## Installation

Add this line to your application's Gemfile:

    gem 'chh_moretext'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chh_moretext

## Usage

``` ruby
ChhMoretext::Moretext.sentence
# 取得一個長度隨機的句子

ChhMoretext::Moretext.sentence(5..10)
# 取得一個長度 5 到 10 個字個句子，可以用範圍（Range）或是整數（Integer）

ChhMoretext::Moretext.sentences(2, 7)
# 基本上跟 `sentence` 一樣，但是可以指定要取得幾個句子
# 以此例來說，會取得 2 個 7 個字的句子

ChhMoretext::Moretext.paragraph
# 取得一個段落，預設是由 3 個句子（`sentence`）合併組成

ChhMoretext::Moretext.paragraph(10)
# 也可以指定要用幾個句子組成

ChhMoretext::Moretext.paragraphs
# 取得一篇文章，預設由三個段落（`paragraph`）合併組成

ChhMoretext::Moretext.paragraphs(5)
# 也可以指定要有幾個段落
```

## Issues

目前已知的問題……

* limit 如果設一個字，例如給出 /sentences.json?n=3&limit=1 這個 URL 請求，Moretext 伺服器就會死機好一陣子；

## TODO

* 目前每呼叫一個方法就是一個 request，造成產生假文的速度非常緩慢，打算弄個「快取層」先把資料抓來，呼叫方法時從快取裡面去拿；
* 目前的 `paragraphs` 方法是將 `sentences` 用 `"\r\n\r\n"` 合併的，應該讓開發者可以自訂要用什麼拼接，例如用 HTML 的 `<p></p>` 等等；
* 想做一個中文姓名產生器……

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
