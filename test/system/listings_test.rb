require "application_system_test_case"

class ListingsTest < ApplicationSystemTestCase
  setup do
    @listing = listings(:one)
  end

  test "visiting the index" do
    visit listings_url
    assert_selector "h1", text: "Listings"
  end

  test "creating a Listing" do
    visit listings_url
    click_on "New Listing"

    fill_in "Amenities", with: @listing.amenities
    check "Audio engineer" if @listing.audio_engineer
    fill_in "Audio sample", with: @listing.audio_sample
    fill_in "Belongs to", with: @listing.belongs_to
    fill_in "Category", with: @listing.category
    fill_in "Content", with: @listing.content
    fill_in "Location", with: @listing.location
    fill_in "Main equipments", with: @listing.main_equipments
    fill_in "Minimum booking", with: @listing.minimum_booking
    fill_in "Past clients", with: @listing.past_clients
    fill_in "Photo url", with: @listing.photo_url
    check "Quick replies" if @listing.quick_replies
    fill_in "Ratings", with: @listing.ratings
    fill_in "Studio cancellation policy", with: @listing.studio_cancellation_policy
    fill_in "Studio hours", with: @listing.studio_hours
    fill_in "Studio rule", with: @listing.studio_rule
    fill_in "Studio type", with: @listing.studio_type
    fill_in "Title", with: @listing.title
    check "Verified" if @listing.verified
    fill_in "Verified reviews", with: @listing.verified_reviews
    click_on "Create Listing"

    assert_text "Listing was successfully created"
    click_on "Back"
  end

  test "updating a Listing" do
    visit listings_url
    click_on "Edit", match: :first

    fill_in "Amenities", with: @listing.amenities
    check "Audio engineer" if @listing.audio_engineer
    fill_in "Audio sample", with: @listing.audio_sample
    fill_in "Belongs to", with: @listing.belongs_to
    fill_in "Category", with: @listing.category
    fill_in "Content", with: @listing.content
    fill_in "Location", with: @listing.location
    fill_in "Main equipments", with: @listing.main_equipments
    fill_in "Minimum booking", with: @listing.minimum_booking
    fill_in "Past clients", with: @listing.past_clients
    fill_in "Photo url", with: @listing.photo_url
    check "Quick replies" if @listing.quick_replies
    fill_in "Ratings", with: @listing.ratings
    fill_in "Studio cancellation policy", with: @listing.studio_cancellation_policy
    fill_in "Studio hours", with: @listing.studio_hours
    fill_in "Studio rule", with: @listing.studio_rule
    fill_in "Studio type", with: @listing.studio_type
    fill_in "Title", with: @listing.title
    check "Verified" if @listing.verified
    fill_in "Verified reviews", with: @listing.verified_reviews
    click_on "Update Listing"

    assert_text "Listing was successfully updated"
    click_on "Back"
  end

  test "destroying a Listing" do
    visit listings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Listing was successfully destroyed"
  end
end
