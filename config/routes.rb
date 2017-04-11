Rails.application.routes.draw do
  namespace :api, :defaults => {:format => :json} do # adds /api/URI to routes
    namespace :v1 do
      get    "/words",      to: "words#index"    #Read
      post   "/words",      to: "words#create"   #Create
      get    "/words/:id",  to: "words#show"     #Read
      put    "/words/:id",  to: "words#update"   #Update
      delete "/words/:id",  to: "words#destroy"  #Delete
    end
  end
end
