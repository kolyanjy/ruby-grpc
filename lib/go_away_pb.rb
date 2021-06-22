require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "go_away.GoAwayRequest" do
    optional :name, :string, 1
  end

  add_message "go_away.GoAwayReply" do
    optional :message, :string, 1
  end
end

module GoAway
  GoAwayRequest = Google::Protobuf::DescriptorPool.generated_pool.lookup("go_away.GoAwayRequest").msgclass
  GoAwayReply = Google::Protobuf::DescriptorPool.generated_pool.lookup("go_away.GoAwayReply").msgclass
end