require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /pages" do
		it "can view page when signed out" do
			get root_path
			expect(response).to have_http_status(200)
		end

		it "can view page when signed in" do
			sign_in FactoryGirl.create(:user)
			get root_path
			expect(response).to have_http_status(200)
		end
	end
end