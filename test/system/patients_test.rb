require "application_system_test_case"

class PatientsTest < ApplicationSystemTestCase
  setup do
    @patient = patients(:one)
  end

  test "visiting the index" do
    visit patients_url
    assert_selector "h1", text: "Patients"
  end

  test "should create patient" do
    visit patients_url
    click_on "New patient"

    fill_in "Address", with: @patient.address
    fill_in "Allergies", with: @patient.allergies
    fill_in "Bp", with: @patient.bp
    fill_in "Cardio", with: @patient.cardio
    fill_in "Dob", with: @patient.dob
    check "Female" if @patient.female
    fill_in "First name", with: @patient.first_name
    fill_in "Gender", with: @patient.gender
    fill_in "Height", with: @patient.height
    fill_in "Id", with: @patient.id
    fill_in "Last name", with: @patient.last_name
    fill_in "Marital status", with: @patient.marital_status
    fill_in "Medical allergies", with: @patient.medical_allergies
    fill_in "Next of kin", with: @patient.next_of_kin
    fill_in "Number of children", with: @patient.number_of_children
    fill_in "Phone number", with: @patient.phone_number
    fill_in "Race", with: @patient.race
    fill_in "Scan results", with: @patient.scan_results
    fill_in "Temp", with: @patient.temp
    fill_in "Underlying conditions", with: @patient.underlying_conditions
    fill_in "Urine sample", with: @patient.urine_sample
    fill_in "Vaccination history", with: @patient.vaccination_history
    fill_in "Weight", with: @patient.weight
    click_on "Create Patient"

    assert_text "Patient was successfully created"
    click_on "Back"
  end

  test "should update Patient" do
    visit patient_url(@patient)
    click_on "Edit this patient", match: :first

    fill_in "Address", with: @patient.address
    fill_in "Allergies", with: @patient.allergies
    fill_in "Bp", with: @patient.bp
    fill_in "Cardio", with: @patient.cardio
    fill_in "Dob", with: @patient.dob
    check "Female" if @patient.female
    fill_in "First name", with: @patient.first_name
    fill_in "Gender", with: @patient.gender
    fill_in "Height", with: @patient.height
    fill_in "Id", with: @patient.id
    fill_in "Last name", with: @patient.last_name
    fill_in "Marital status", with: @patient.marital_status
    fill_in "Medical allergies", with: @patient.medical_allergies
    fill_in "Next of kin", with: @patient.next_of_kin
    fill_in "Number of children", with: @patient.number_of_children
    fill_in "Phone number", with: @patient.phone_number
    fill_in "Race", with: @patient.race
    fill_in "Scan results", with: @patient.scan_results
    fill_in "Temp", with: @patient.temp
    fill_in "Underlying conditions", with: @patient.underlying_conditions
    fill_in "Urine sample", with: @patient.urine_sample
    fill_in "Vaccination history", with: @patient.vaccination_history
    fill_in "Weight", with: @patient.weight
    click_on "Update Patient"

    assert_text "Patient was successfully updated"
    click_on "Back"
  end

  test "should destroy Patient" do
    visit patient_url(@patient)
    click_on "Destroy this patient", match: :first

    assert_text "Patient was successfully destroyed"
  end
end
