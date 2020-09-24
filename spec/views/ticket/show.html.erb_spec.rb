# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'ticket/show', type: :view do
  it 'renders a QR code' do
    code = GenerateQrCode.new.call
    assign(:code, code)
    render

    expect(rendered).to include(code)
  end
end
