# Alchemy CMS Richmedia Essences

Adds a location model and a EssenceLocation essence to your Alchemy CMS powered site.

This version is compatible with Alchemy version 3.0 and above only.

## Installation

**Make sure you have Alchemy CMS installed.**

** There's no installation instructions yet. You probably know what you're doing anyways **
## Usage

1. After installing, prepare your database with:

        $ rake alchemy_essence_location:install:migrations db:migrate

2. In your `elements.yml` add one of the shiny new essences to your element of choice.

        # elements.yml
        - name: location
          contents:
          - name: location
            type: EssenceLocation

That's it!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
