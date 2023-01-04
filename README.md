# Dateseq

[![Gem Version](https://badge.fury.io/rb/dateseq.svg)](https://badge.fury.io/rb/dateseq)
[![Build Status](https://github.com/masa21kik/dateseq/workflows/test/badge.svg?branch=master)](https://github.com/masa21kik/dateseq/actions?query=workflow%3Atest)
[![Maintainability](https://api.codeclimate.com/v1/badges/3127d2fbb669ab278d24/maintainability)](https://codeclimate.com/github/masa21kik/dateseq/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/3127d2fbb669ab278d24/test_coverage)](https://codeclimate.com/github/masa21kik/dateseq/test_coverage)

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
        -i, --increments NUM Set date increment steps (default is 1)
        -m, --monthly        Set to monthly mode
        -h, --help           Show this message
        -v, --version        Show version

## Contributing

1. Fork it ( http://github.com/<my-github-username>/dateseq/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
