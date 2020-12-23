class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        proj_back = ProjectBacker.new(self, backer)
    end

    def backers
        all_back = ProjectBacker.all.collect do |proj_back|
            if proj_back.project == self
                proj_back.backer
            end
        end
        all_back.delete(nil)
        all_back
    end

end
