json.extract! patient, :id, :first_name, :last_name, :dob, :gender, :race, :address, :phone_number, :underlying_conditions, :vaccination_history, :bp, :urine_sample, :temp, :cardio, :weight, :height, :allergies, :medical_allergies, :female, :number_of_children, :marital_status, :next_of_kin, :scan_results, :id, :created_at, :updated_at
json.url patient_url(patient, format: :json)
