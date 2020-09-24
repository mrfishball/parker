# frozen_string_literal: true

require 'rails_helper'

RSpec.describe GenerateQrCode do
  it 'generate a QR code' do
    class MockQRGenerator
      def as_svg(*)
        'code generated'
      end
    end

    qr_code = GenerateQrCode
              .new(generator: MockQRGenerator.new)
              .call

    expect(qr_code).to eq('code generated')
  end
end
