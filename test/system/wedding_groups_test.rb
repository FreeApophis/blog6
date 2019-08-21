require "application_system_test_case"

class WeddingGroupsTest < ApplicationSystemTestCase
  setup do
    @wedding_group = wedding_groups(:one)
  end

  test "visiting the index" do
    visit wedding_groups_url
    assert_selector "h1", text: "Wedding Groups"
  end

  test "creating a Wedding group" do
    visit wedding_groups_url
    click_on "New Wedding Group"

    fill_in "Name", with: @wedding_group.name
    fill_in "Password", with: @wedding_group.password
    click_on "Create Wedding group"

    assert_text "Wedding group was successfully created"
    click_on "Back"
  end

  test "updating a Wedding group" do
    visit wedding_groups_url
    click_on "Edit", match: :first

    fill_in "Name", with: @wedding_group.name
    fill_in "Password", with: @wedding_group.password
    click_on "Update Wedding group"

    assert_text "Wedding group was successfully updated"
    click_on "Back"
  end

  test "destroying a Wedding group" do
    visit wedding_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wedding group was successfully destroyed"
  end
end
