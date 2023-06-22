Rails.application.routes.draw do
  #good practice api/v1/model_name/action
  namespace 'api' do
    namespace 'v1' do
      get 'read_csv'
    end
  end
end
