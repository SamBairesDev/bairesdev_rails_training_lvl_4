require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    @person = people(:one)
  end

  test "visiting the index" do
    visit people_url
    assert_selector "h1", text: "People"
  end

  test "creating a Person" do
    visit people_url
    click_on "New Person"

    fill_in "Country", with: @person.country
    fill_in "Name", with: @person.name
    fill_in "Project", with: @person.project_id
    fill_in "Role", with: @person.role_id
    check "Tag a" if @person.tag_a
    check "Tag b" if @person.tag_b
    check "Tag c" if @person.tag_c
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "updating a Person" do
    visit people_url
    click_on "Edit", match: :first

    fill_in "Country", with: @person.country
    fill_in "Name", with: @person.name
    fill_in "Project", with: @person.project_id
    fill_in "Role", with: @person.role_id
    check "Tag a" if @person.tag_a
    check "Tag b" if @person.tag_b
    check "Tag c" if @person.tag_c
    click_on "Update Person"

    assert_text "Person was successfully updated"
    click_on "Back"
  end

  test "destroying a Person" do
    visit people_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Person was successfully destroyed"
  end
end
