Rails.application.routes.draw do
  #good practice api/v1/model_name/action
  namespace 'api' do
    namespace 'v1' do
      resources :movies, only: [:index] do
        get 'read_csv', on: :collection
      end
    end
  end
end
