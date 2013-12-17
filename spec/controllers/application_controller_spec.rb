require "spec_helper"

describe ApplicationController do
  controller do
    ugly_javascript

    def index
      respond_to do |format|
        format.html { render nothing: true }
        format.js   { render nothing: true }
      end
    end
  end

  describe 'GET javascript' do
    it do
      get :index
      expect(response).to be_success
    end

    it do
      get :index
      expect(Uglifier).to_not receive(:compile)
    end
  end

  describe 'GET index.js' do
    it do
      get :index, format: "js"
      expect(response).to be_success
    end

    it do
      expect(Uglifier).to receive(:compile)
      get :index, format: "js"
    end
  end
end
