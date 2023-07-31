module Converter
    class Base < Grape::API
        mount Converter::Currency
    end
end
