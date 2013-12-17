module UglyJavascript
  module ActionView
    def ugly_javascript(opts = {}, &code)
      except_script_tag = opts.delete(:except_script_tag)
      ugly_code = Uglifier.compile(capture(&code), opts)
      except_script_tag ? ugly_code : javascript_tag(ugly_code, opts)
    end
  end
end
