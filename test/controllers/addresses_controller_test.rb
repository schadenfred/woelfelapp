# require "test_helper"

# describe AddressesController do
#   let(:address) { addresses :one }

#   it "gets index" do
#     get addresses_url
#     value(response).must_be :success?
#   end

#   it "gets new" do
#     get new_address_url
#     value(response).must_be :success?
#   end

#   it "creates address" do
#     expect {
#       post addresses_url, params: { address: { city: address.city, line_1: address.line_1, line_2: address.line_2, state: address.state, zip: address.zip } }
#     }.must_change "Address.count"

#     must_redirect_to address_path(Address.last)
#   end

#   it "shows address" do
#     get address_url(address)
#     value(response).must_be :success?
#   end

#   it "gets edit" do
#     get edit_address_url(address)
#     value(response).must_be :success?
#   end

#   it "updates address" do
#     patch address_url(address), params: { address: { city: address.city, line_1: address.line_1, line_2: address.line_2, state: address.state, zip: address.zip } }
#     must_redirect_to address_path(address)
#   end

#   it "destroys address" do
#     expect {
#       delete address_url(address)
#     }.must_change "Address.count", -1

#     must_redirect_to addresses_path
#   end
# end
