class Backer

    attr_reader :name

    def initialize (name)
        @name = name
    end

    # is an instance method that accepts a project as an argument and creates a ProjectBacker, associating the project with this backer

    def back_project(project)
        ProjectBacker.new(project, self)
    end

        #  returns an array of projects associated with this Backer instance
    def backed_projects
        projectbacker = ProjectBacker.all.select { |p| p.backer == self }
        projectbacker.collect { |p| p.project }
    end




end
