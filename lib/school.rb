# code here!
require 'pry'

class School
    attr_accessor :roster
    attr_reader :school_name

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    

    def add_student(student, grade)
        if @roster[grade]
            @roster[grade] << student
        else
            @roster[grade] = []
            @roster[grade] << student
        end
    end 
    
    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |key, value|
            @roster[key] = value.sort
        end
    end

end