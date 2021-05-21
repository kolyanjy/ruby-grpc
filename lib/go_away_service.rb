require 'grpc'
require 'go_away_pb'

module GoAway
  module Greeter
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'go_away.Greeter'

      rpc :GoAway, GoAwayRequest, GoAwayReply
    end

    Stub = Service.rpc_stub_class
  end
end
