require "spec_helper"

describe 'UglyJavascript::ActionView' do
  describe '#ugly_javascript' do
    let(:code) do
      Proc.new do
        <<-JS_CODE
          var integer = 1;
          $(function(){ console.log(integer); })
        JS_CODE
      end
    end

    it do
      expect(Uglifier).to receive(:compile)
      helper.ugly_javascript(&code)
    end

    it do
      ugly_code = helper.ugly_javascript(&code)
      expect(ugly_code).to match(/<script>/)
    end

    it do
      ugly_code = helper.ugly_javascript(except_script_tag: true, &code)
      expect(ugly_code).to_not match(/<script>/)
    end
  end
end
