module Generategem
    
    require 'colorize'
    puts 'GenerateGem'.red.bold
    puts 'your GemSpec builder!'.bold
    
    print 'Name: '
    name = gets.strip
    
    print 'version: '
    version = gets.strip
    
    print 'date: '
    date = gets.strip
    
    print 'summary: '
    summary = gets.strip
    
    print 'description: '
    description = gets.strip
    
    print 'author(s): '
    authors = gets.strip.split(',')
    
    print 'email: '
    email = gets.strip
    
    print 'files: '
    files = gets.strip.split(',')
    
    print 'homepage: '
    homepage = gets.strip
    
    print 'license: '
    license = gets.strip
    
    print 'executables: '
    executables = gets.strip.split(',')
    
    
    gemspecFile = File.split(Dir.getwd)[-1] + '.gemspec'
    
    File.open(gemspecFile, 'w') { |file| 
        file.puts 'Gem::Specification.new do |s|'
        file.puts "s.name        = \"#{name}\""
        file.puts "s.version     = \"#{version}\""
        file.puts "s.date        = \"#{date}\""
        file.puts "s.summary     = \"#{summary}\""
        file.puts "s.description = \"#{description}\""
        file.puts "s.authors     = #{authors}"
        file.puts "s.email       = \"#{email}\""
        file.puts "s.files       = #{files}"
        file.puts "s.homepage    = \"#{homepage}\""
        file.puts "s.license     = \"#{license}\""
        file.puts "s.executables = #{executables}"
        file.puts 'end'
    }
    
    puts 'Finish!, Good Coding!'.green.bold
    
end