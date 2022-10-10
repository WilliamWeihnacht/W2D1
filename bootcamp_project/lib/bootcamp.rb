class Bootcamp

    def initialize(name,slogan,student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new { |h, k| h[k] = [] }
    end

    def name
        @name
    end

    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(str)
        @teachers<<str
    end

    def enroll(str)
        if @students.length < @student_capacity
            @students<<str
            return true
        else
            return false
        end
    end

    def enrolled?(str)
        return true if @students.include?(str)
        return false
    end

    def student_to_teacher_ratio
        return @students.length / @teachers.length
    end

    def add_grade(stu,grade)
        if @students.include?(stu)
            @grades[stu]<<grade
            return true
        end
        return false
    end

    def num_grades(stu)
        return @grades[stu].length
    end

    def average_grade(stu)
        if @students.include?(stu) && !@grades[stu].empty?
            return @grades[stu].sum / @grades[stu].length
        else
            return nil
        end
    end

  
end
