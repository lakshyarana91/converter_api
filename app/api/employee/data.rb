module Employee
    class Data < Grape::API
      format :json

     


      resource :employee_data do
        desc "List all Employee"

  
        get do
          p "Testing"
        end
  
      end
  
    end
  end