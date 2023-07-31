class Base < Grape::API
  prefix 'api'
  version 'v1', using: :path
  mount Employee::Data
  mount Converter::Currency
end

