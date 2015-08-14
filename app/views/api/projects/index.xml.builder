xml.instruct!
xml.projects do
  @projects.each do |project|
    xml.project do
      xml.name project.name
      xml.created_at project.created_at.strftime("%m/%d/%Y")
      xml.tasks do
        project.tasks.each do |task|
          xml.task do
            xml.name task.name
            xml.due_at task.due_at
          end
        end
      end
    end
  end
end
