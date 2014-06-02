# Dateseq

Generate date sequence like seq command

## Installation

Add this line to your application's Gemfile:

    gem 'dateseq'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dateseq

## Usage

    $ dateseq [OPTIONS] FROM_DATE TO_DATE

    $ dateseq 20140602 20140605
    20140602
    20140603
    20140604
    20140605

    Options:
        -f, --format FORMAT  Set date format (default is '%Y%m%d')
        -s, --separator SEP  Set separator charactor (default is '\n')
        -h, --help           Show this message
        -v, --version        Show version

## Contributing

1. Fork it ( http://github.com/<my-github-username>/dateseq/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
