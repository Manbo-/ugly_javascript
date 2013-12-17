# UglyJavascript

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'ugly_javascript', github: "Manbo-/ugly_javascript"

And then execute:

    $ bundle

## Usage

### View

    <%= ugly_javascript do %>
      $(function(){
        var neko = "nya";
        console.log(neko);
      });
    <% end %>

<script>
//<![CDATA[
$(function(){var n="nya";console.log(n)});
//]]>
</script>

### Controller

    class ExamplesController < ApplicationController
      ugly_javascript :only => :javascript
    
      def javascript
        code = <<-EOF
          $(function(){
            var neko = "nya";
            console.log(neko);
          });
        EOF
	respond_to do |format|
          format.js{ render inline: code }
        end
      end
    end

$(function(){var n="nya";console.log(n)});

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
