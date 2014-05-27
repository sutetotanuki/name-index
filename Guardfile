# A sample Guardfile
# More info at https://github.com/guard/guard#readme

notification :growl

guard :rspec do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{name_index.rb$})     { |m| "spec/name_index_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
end
