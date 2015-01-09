require "octopress-pullquote-tag/version"
require "octopress-pullquote-tag/utils"
require "rubypants"

module Octopress
  module Tags
    module PullQuote
      class Tag < Liquid::Block
        def initialize(tag_name, markup, tokens)
          @markup = markup
          super
        end

        def render(context)
          output = super
          quotemarks = /\{"\s*(.+?)\s*"\}/m
          if output =~ quotemarks

            output.gsub!(quotemarks, '\1')

            quote = RubyPants.new($1).to_html

            alignment = @markup.scan(/(left|right|center)/i).first || 'right'
            classnames = @markup.sub(/left|right|center/i, '').strip

            output = "<span class='pullquote-#{alignment} #{classnames}' data-pullquote='#{quote}'></span>#{output}"

            Utils.parse_content(output, context)
          else
            raise "PullQuote Error: Surround your pullquote like this {\" text to be quoted \"}"
          end
        end
      end
    end
  end
end

Liquid::Template.register_tag('pullquote', Octopress::Tags::PullQuote::Tag)

if defined? Octopress::Docs
  Octopress::Docs.add({
    name:        "Octopress Pullquote Tag",
    gem:         "octopress-pullquote-tag",
    description: "Elegant pullquotes for Jekyll site site",
    path:        File.expand_path(File.join(File.dirname(__FILE__), "../")),
    source_url:  "https://github.com/octopress/quote-tag",
    version:     Octopress::Tags::Quote::VERSION
  })
end

