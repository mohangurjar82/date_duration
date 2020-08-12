# DateDuration

The Duration Calculator calculates the number of days, months and years between two dates.

## Installation

Add this line to your application's Gemfile:

    gem 'date_duration'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install date_duration

## Usage

    require 'date_duration'
    components = Date.duration(start_date, end_date)