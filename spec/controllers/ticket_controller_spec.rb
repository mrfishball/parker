# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TicketController, type: :controller do
  describe 'GET #show' do
    it 'renders successfully' do
      expect(response).to have_http_status(200)
    end

    it 'renders the show template' do
      get :show
      expect(response).to render_template('show')
    end
  end
end
