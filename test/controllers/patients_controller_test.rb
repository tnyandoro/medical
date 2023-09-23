require "test_helper"

class PatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @patient = patients(:one)
  end

  test "should get index" do
    get patients_url
    assert_response :success
  end

  test "should get new" do
    get new_patient_url
    assert_response :success
  end

  test "should create patient" do
    assert_difference("Patient.count") do
      post patients_url, params: { patient: { address: @patient.address, allergies: @patient.allergies, bp: @patient.bp, cardio: @patient.cardio, dob: @patient.dob, female: @patient.female, first_name: @patient.first_name, gender: @patient.gender, height: @patient.height, id: @patient.id, last_name: @patient.last_name, marital_status: @patient.marital_status, medical_allergies: @patient.medical_allergies, next_of_kin: @patient.next_of_kin, number_of_children: @patient.number_of_children, phone_number: @patient.phone_number, race: @patient.race, scan_results: @patient.scan_results, temp: @patient.temp, underlying_conditions: @patient.underlying_conditions, urine_sample: @patient.urine_sample, vaccination_history: @patient.vaccination_history, weight: @patient.weight } }
    end

    assert_redirected_to patient_url(Patient.last)
  end

  test "should show patient" do
    get patient_url(@patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_patient_url(@patient)
    assert_response :success
  end

  test "should update patient" do
    patch patient_url(@patient), params: { patient: { address: @patient.address, allergies: @patient.allergies, bp: @patient.bp, cardio: @patient.cardio, dob: @patient.dob, female: @patient.female, first_name: @patient.first_name, gender: @patient.gender, height: @patient.height, id: @patient.id, last_name: @patient.last_name, marital_status: @patient.marital_status, medical_allergies: @patient.medical_allergies, next_of_kin: @patient.next_of_kin, number_of_children: @patient.number_of_children, phone_number: @patient.phone_number, race: @patient.race, scan_results: @patient.scan_results, temp: @patient.temp, underlying_conditions: @patient.underlying_conditions, urine_sample: @patient.urine_sample, vaccination_history: @patient.vaccination_history, weight: @patient.weight } }
    assert_redirected_to patient_url(@patient)
  end

  test "should destroy patient" do
    assert_difference("Patient.count", -1) do
      delete patient_url(@patient)
    end

    assert_redirected_to patients_url
  end
end
