require 'test_helper'

class ListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get listings_url
    assert_response :success
  end

  test "should get new" do
    get new_listing_url
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post listings_url, params: { listing: { amenities: @listing.amenities, audio_engineer: @listing.audio_engineer, audio_sample: @listing.audio_sample, belongs_to: @listing.belongs_to, category: @listing.category, content: @listing.content, location: @listing.location, main_equipments: @listing.main_equipments, minimum_booking: @listing.minimum_booking, past_clients: @listing.past_clients, photo_url: @listing.photo_url, quick_replies: @listing.quick_replies, ratings: @listing.ratings, studio_cancellation_policy: @listing.studio_cancellation_policy, studio_hours: @listing.studio_hours, studio_rule: @listing.studio_rule, studio_type: @listing.studio_type, title: @listing.title, verified: @listing.verified, verified_reviews: @listing.verified_reviews } }
    end

    assert_redirected_to listing_url(Listing.last)
  end

  test "should show listing" do
    get listing_url(@listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_listing_url(@listing)
    assert_response :success
  end

  test "should update listing" do
    patch listing_url(@listing), params: { listing: { amenities: @listing.amenities, audio_engineer: @listing.audio_engineer, audio_sample: @listing.audio_sample, belongs_to: @listing.belongs_to, category: @listing.category, content: @listing.content, location: @listing.location, main_equipments: @listing.main_equipments, minimum_booking: @listing.minimum_booking, past_clients: @listing.past_clients, photo_url: @listing.photo_url, quick_replies: @listing.quick_replies, ratings: @listing.ratings, studio_cancellation_policy: @listing.studio_cancellation_policy, studio_hours: @listing.studio_hours, studio_rule: @listing.studio_rule, studio_type: @listing.studio_type, title: @listing.title, verified: @listing.verified, verified_reviews: @listing.verified_reviews } }
    assert_redirected_to listing_url(@listing)
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete listing_url(@listing)
    end

    assert_redirected_to listings_url
  end
end
