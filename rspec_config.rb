RSpec.configure do |c|
  c.fail_fast = true
  c.color = true
  c.expect_with(:rspec) { |expectations| expectations.syntax = [:should, :expect] }
end
