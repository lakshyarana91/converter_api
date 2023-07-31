    module Converter
        class Currency < Grape::API
            # version 'v1' , using: :path
            format :json
            rescue_from :all
    

            error_formatter :json,lambda (message, backtrace, options, env, original_exception) {
                # "error: #{message} from #{backtrace}"
                {
                    status: 'failed',
                    message:message,
                    error_code:123
                }
              } 
            



            
            

            helpers do
                def get_exchange_rate(currency)
                  case currency
                  when 'NTD'
                    30
                  else
                    raise StandardError.new "no conversion found for currency #{currency}"
                  end
                end
              end


            resource :currency do
                params do
                    requires :amount, type: Float
                    requires :to_currency, type: String

                end
                get :exchange do
                    converted_amount = params[:amount] * 
                    get_exchange_rate(params[:to_currency])
                    {
                        amount: converted_amount,
                        currency:params[:to_currency]
                    }
                end
            end
        end
    end