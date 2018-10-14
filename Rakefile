require 'rake/testtask'


task default: ['test']

desc 'Run all tests in test/'
Rake::TestTask.new do |t|
  t.test_files = FileList['test/*_test.rb']
end
