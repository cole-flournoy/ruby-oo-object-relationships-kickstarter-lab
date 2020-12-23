require "pry"

class Backer 
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        proj_back = ProjectBacker.new(project, self)        
    end

    def backed_projects
        all_proj = ProjectBacker.all.collect do |proj_back|
            if proj_back.backer == self
                proj_back.project
            end
        end
        all_proj.delete(nil)
        all_proj
    end

end
