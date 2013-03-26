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

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
