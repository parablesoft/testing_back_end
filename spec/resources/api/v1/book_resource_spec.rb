require "rails_helper"
RSpec.describe Api::V1::BookResource do
  let(:expected_fields){[:id,:title,:author]}
  it{expect(described_class.fields).to match_array(expected_fields)}
end
