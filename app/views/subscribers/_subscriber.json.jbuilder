json.extract! subscriber, :id, :nombres, :apellidos, :correo, :preferencias, :created_at, :updated_at
json.url subscriber_url(subscriber, format: :json)