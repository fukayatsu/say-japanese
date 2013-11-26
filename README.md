# Say::Japanese

Say in japanese (using say-command on MacOSX)

## Requirements
- MacOSX 10.7(Lion) or later
- Voice data: `Kyoko` or `Otoya`
    - [How to Add New Voices to Mac OS X](http://osxdaily.com/2011/07/25/how-to-add-new-voices-to-mac-os-x/)

## Installation

Add this line to your application's Gemfile:

    gem 'say-japanese'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install say-japanese

## Usage

```ruby
require 'say/japanese'

say 'オブジェクト指向スクリプト言語 ルビー'

set_say_as_default :otoya

say 'オブジェクト指向スクリプト言語 ルビー'

say_as :kyoko, 'ルビーとは、'

say_as :otoya, <<EOT
  オープンソースの動的なプログラミング言語で、
  シンプルさと高い生産性を備えています。
  エレガントな文法を持ち、自然に読み書きができます。
EOT



```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
