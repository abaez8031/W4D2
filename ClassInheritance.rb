class Employee
    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def bonus(multiplier)
        @salary * multiplier
    end

    attr_reader :salary

end


class Manager < Employee

    attr_reader :employees

    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @employees = []
    end

    def bonus(multiplier)
        self.total_salary * multiplier
    end
    
    def total_salary
        total_sal = 0
        @employees.each do |employee|
            total_sal += employee.salary
        end
        total_sal
    end



end

ned = Manager.new("Ned", "Founder", 1000000000, nil)
darren = Manager.new("Darren", "TA Manager", 78000, ned)
shawna = Employee.new("Shawna", "TA", 12000, darren)
david = Employee.new("David", "TA", 10000, darren)

ned.employees << darren
ned.employees << shawna
ned.employees << david

darren.employees << shawna
darren.employees << david

# p ned.total_salary 

p ned.bonus(5)
p darren.bonus(4)

