require 'simplecov'
SimpleCov.start

require 'minitest/autorun'
require 'minitest/pride'
require 'stringio'

# def simulate_stdin(*inputs)
#    io = StringIO.new
#    inputs.flatten.each { |str| io.puts(str) }
#    io.rewind
#
#    actual_stdin = $stdin
#    $stdin = io
#    yield
#  ensure
#    $stdin = actual_stdin
# end
