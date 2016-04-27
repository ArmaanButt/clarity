# encoding: UTF-8
survey "Course survey", :default_mandatory => false do

  section "Simple Course questions" do
    label "These are simple questions"

    q_1 "When did you take this course?"
    a_1 :date


    q_2 "Why did you take this couse?", :pick => :any
    a_1 "Degree Requirement"
    a_2 "Fun"
    a_3 "Friend"
    a_4 "I don't know"

  end
end