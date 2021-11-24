json.extract! customer, :id, :customer_name, :contact_person, :adress_custommer, :edrpou, :email, :website, :note, :dev_date, :created_at, :updated_at
json.url customer_url(customer, format: :json)
