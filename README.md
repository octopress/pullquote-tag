# Octopress Pullquote Tag

Elegant pull-quotes for Jekyll sites.

## Installation

### Using Bundler

Add this gem to your site's Gemfile in the `:jekyll_plugins` group:

    group :jekyll_plugins do
      gem 'octopress-pullquote-tag'
    end

Then install the gem with Bundler

    $ bundle

### Manual Installation

    $ gem install octopress-pullquote-tag

Then add the gem to your Jekyll configuration.

    gems:
      -octopress-pullquote-tag

## Usage

1. Surround the paragraph you want to quote from with a `{% pullquote %}` tag.
2. Surround the quote you want to use with `{"` and `"}`.

For example:

```
{% pullquote %}
When writing long-form posts, I find it helpful to include pull-quotes, which help
those scanning a post discern whether or not a post is helpful. It is important to 
note, {" pull-quotes are merely visual in presentation and should not appear twice in the text. "} That 
is why it is preferred to use a CSS only technique for styling pull-quotes.
{% endpullquote %}
```

This will output the following:

```
<p><span data-pullquote="pullquotes are merely visual in presentation and should not appear twice in the text."></span>
When writing long-form posts, I find it helpful to include pull-quotes, which help
those scanning a post discern whether or not a post is helpful. It is important to 
note, pull-quotes are merely visual in presentation and should not appear twice in the text. That 
is why it is preferred to use a CSS only technique for styling pull-quotes.</p>
```

### Styling & Classnames

This plugin does not currently ship with its own CSS for styling. Octopress themes will have styling for this or you may look to [Maykel Loomans](http://miekd.com/articles/pull-quotes-with-html5-and-css/) for inspiration.

By default pull-quotes will be given the classname `pullquote-right`. For center or left aligned pull quotes, add the alignment to the
tag like this.

```
{% pullquote %}        #=> class='pullquote-right'
{% pullquote left %}   #=> class='pullquote-left'
{% pullquote center %} #=> class='pullquote-center'
```

Any other text added to the pull-quote tag will be added as a classname too.

```
{% pullquote big %}              #=> class='pullquote-right big'
{% pullquote left highlight %}   #=> class='pullquote-left highlight'
```

## Contributing

1. Fork it ( https://github.com/octopress/pullquote-tag/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
