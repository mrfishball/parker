# frozen_string_literal: true

require 'rqrcode'

class GenerateQrCode
  def initialize(generator: nil)
    @generator = generator || RQRCode::QRCode.new(Time.current.to_s)
  end

  def call
    generator.as_svg(
      offset: 0,
      color: '000',
      shape_rendering: 'crispEdges',
      module_size: 6,
      standalone: true
    )
  end

  attr_reader :generator
end
