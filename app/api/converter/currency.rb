module Converter
    class Currency < Grape::API
        # version 'v1' , using: :path
        prefix :api

        

        resource :currency do
            get :exchange do
                params

            end
        end
    end
end
