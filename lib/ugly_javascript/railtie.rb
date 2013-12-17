module UglyJavascript
  class Railtie < ::Rails::Railtie
    initializer 'ugly_javascript.initialize' do
      ActiveSupport.on_load(:action_controller) do
        include UglyJavascript::ActionController
      end

      ActiveSupport.on_load(:action_view) do
        include UglyJavascript::ActionView
      end
    end
  end
end
