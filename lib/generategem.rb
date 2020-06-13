module Generategem
    
    require 'colorize'
    puts "GenerateGem\n".red.bold + "your GemSpec builder!\n".bold
    
    print 'Name'.cyan.bold + ": "
    name = gets.strip
    
    print 'version'.cyan.bold + ": "
    version = gets.strip
    
    print 'date'.cyan.bold + ": "
    date = gets.strip
    
    print 'summary'.cyan.bold + ": "
    summary = gets.strip
    
    print 'description'.cyan.bold + ": "
    description = gets.strip
    
    print 'author(s)'.cyan.bold + ": "
    authors = gets.strip.split(',')
    
    print 'email'.cyan.bold + ": "
    email = gets.strip
    
    print 'files'.cyan.bold + ": "
    files = gets.strip.split(',')
    
    print 'homepage'.cyan.bold + ": "
    homepage = gets.strip
    
    print 'license'.cyan.bold + ": "
    license = gets.strip
    
    print 'executables'.cyan.bold + ": "
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
