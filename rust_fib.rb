require 'ffi'

module Fib
  extend FFI::Library
  ffi_lib 'target/release/libfib.dylib'
  attach_function :fib, [:uint], :uint
end

puts Fib.fib(40)
