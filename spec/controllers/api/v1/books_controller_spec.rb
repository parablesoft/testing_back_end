require 'rails_helper'

RSpec.describe Api::V1::BooksController, type: :controller do


  context "routes" do
    it { should route(:get, '/api/v1/books').to(action: :index) }
  end


  it { expect(described_class).to be < Api::V1::ApiController }
end
