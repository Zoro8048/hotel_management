Rails.application.routes.draw do
  get 'get_rooms_list', to: 'rooms#all'
  get 'get_room_types', to: 'rooms#room_types'
  get 'get_all_customers', to: 'customers#get_all_customers'
  get 'get_available_rooms', to: 'rooms#get_available_rooms'
  get 'get_history/:customer_id', to: 'customers#customer_history'
  get 'get_history', to: 'rooms#get_history'
  post 'checkin', to: 'rooms#checkin'
  post 'checkout', to: 'rooms#checkout'
end
