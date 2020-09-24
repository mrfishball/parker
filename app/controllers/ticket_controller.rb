# frozen_string_literal: true

class TicketController < ApplicationController
  def index; end

  def show
    @code = GenerateQrCode.new.call
  end
end
