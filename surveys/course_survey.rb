# encoding: UTF-8
# Question#is_mandatory is now false by default. The default_mandatory option allows you to set
#   is_mandatory for all questions in a survey.
survey "Course survey", :default_mandatory => false do

  section "Mandatory questions" do

    label "Logistics"

    q_1 "When did you take this course?" #, :custom_renderer => "/partials/custom_question"
    a :date

    q_2 "Which of the following options best describes the course?", :pick => :one
    a_1 "It was a required course"
    a_2 "It was an elective"
    a_3 "It was a bird course"
    a_4 :other

    q_3 "Were there participation marks?", :pick => :one
    a_1 "Yes"
    a_2 "No"
    a_3 "Don't know"

    q_4 "How much collaborative work and group projects were there?", :pick => :one
    a_1 "Far above average"
    a_2 "More than average"
    a_3 "Slightly more than average"
    a_4 "Average"
    a_5 "Slightly less than average"
    a_6 "Barely any"
    a_7 "None"

    q_5 "Rate the professor", :pick => :one
    a_1 "Far above average"
    a_2 "Above average"
    a_3 "Average"
    a_4 "Below average"
    a_5 "Far below average"

    q_6 "Rate the course content", :pick => :one
    a_1 "Far above average"
    a_2 "Above average"
    a_3 "Average"
    a_4 "Below average"
    a_5 "Far below average"

    q_7 "Rate the overall course expirience", :pick => :one
    a_1 "Far above average"
    a_2 "Above average"
    a_3 "Average"
    a_4 "Below average"
    a_5 "Far below average"

    q_8 "What was the end result of you taking the course", :pick => :one
    a_1 "I aced it"
    a_2 "I passed"
    a_3 "I failed"
    a_4 "I dropped"

    q_9 "How did you do?", :pick => :one
    a_1 "A"
    a_2 "B"
    a_3 "C"
    a_4 "D"
    a_5 "F"

    q_38 "How easy was this course?", :pick => :one
    a_1 "Big Bird"
    a_2 "Very easy"
    a_3 "Easy"
    a_4 "Average"
    a_5 "Difficult"
    a_6 "Very Difficult"
    a_7 "Oscar the Grouch"
  end

  section "Bonus questions" do

    label "Course and goals"

    q_10 "The course objectives were clear", :pick => :one
    a_1 "Yes"
    a_2 "No"
    a_3 "Don't know"

    q_11 "The course increased my interest in the subject", :pick => :one
    a_1 "Yes"
    a_2 "No"
    a_3 "Don't know"

    q_12 "The course corresponded to my expectations", :pick => :one
    a_1 "Yes"
    a_2 "No"
    a_3 "Don't know"

    q_13 "How useful was this course for your career?", :pick => :one
    a_1 "Very useful"
    a_2 "Somewhat useful"
    a_3 "Averagely useful"
    a_4 "Less useful than average"
    a_5 "Not useful"

    label "Course Content"

    q_14 "How easy was the course material  (difficulty of digesting and implementing course materials e.g  in assignments )?", :pick => :one
    a_1 "Very easy"
    a_2 "Easy"
    a_3 "Average"
    a_4 "Difficult"
    a_5 "Very Difficult"

    q_15 "How heavy was the workload  (quantity of workload and no. of assignments/deliverables)?", :pick => :one
    a_1 "Far above average"
    a_2 "Above average"
    a_3 "Average"
    a_4 "Below average"
    a_5 "Far below average"

    label "Course Materials"

    q_16 "The course textbooks were clear and well written", :pick => :one
    a_1 "Definitely agree"
    a_2 "Somewhat agree"
    a_3 "Don't agree or disagree"
    a_4 "Somewhat disagree"
    a_5 "Definitely disagree"

    q_17 "The assignments were appropriate for the level of this class", :pick => :one
    a_1 "Definitely agree"
    a_2 "Somewhat agree"
    a_3 "Don't agree or disagree"
    a_4 "Somewhat disagree"
    a_5 "Definitely disagree"

    q_18 "How useful was the textbook?", :pick => :one
    a_1 "Far above average"
    a_2 "Above average"
    a_3 "Average"
    a_4 "Below average"
    a_5 "Far below average"

    q_19 "How useful was the lecture?", :pick => :one
    a_1 "Far above average"
    a_2 "Above average"
    a_3 "Average"
    a_4 "Below average"
    a_5 "Far below average"

    q_20 "How useful was the online lecture material?", :pick => :one
    a_1 "Far above average"
    a_2 "Above average"
    a_3 "Average"
    a_4 "Below average"
    a_5 "Far below average"

    q_21 "How useful were the tutotials and labs?", :pick => :one
    a_1 "Far above average"
    a_2 "Above average"
    a_3 "Average"
    a_4 "Below average"
    a_5 "Far below average"

    q_22 "How useful were the assignments and projects?", :pick => :one
    a_1 "Far above average"
    a_2 "Above average"
    a_3 "Average"
    a_4 "Below average"
    a_5 "Far below average"

    q_23 "How useful were the practice problems?", :pick => :one
    a_1 "Far above average"
    a_2 "Above average"
    a_3 "Average"
    a_4 "Below average"
    a_5 "Far below average"

    q_24 "How useful were the past midterms and exams?", :pick => :one
    a_1 "Far above average"
    a_2 "Above average"
    a_3 "Average"
    a_4 "Below average"
    a_5 "Far below average"

    label "Professor competency"

    q_25 "The professor demonstrated knowledge of the subject matter", :pick => :one
    a_1 "Definitely agree"
    a_2 "Somewhat agree"
    a_3 "Don't agree or disagree"
    a_4 "Somewhat disagree"
    a_5 "Definitely disagree"

    q_26 "The professor was effective in communicating the content of the course", :pick => :one
    a_1 "Definitely agree"
    a_2 "Somewhat agree"
    a_3 "Don't agree or disagree"
    a_4 "Somewhat disagree"
    a_5 "Definitely disagree"

    q_27 "The professor had legible handwriting and could be understood well when speaking", :pick => :one
    a_1 "Definitely agree"
    a_2 "Somewhat agree"
    a_3 "Don't agree or disagree"
    a_4 "Somewhat disagree"
    a_5 "Definitely disagree"

    q_28 "The professor encouraged feedback from the class", :pick => :one
    a_1 "Definitely agree"
    a_2 "Somewhat agree"
    a_3 "Don't agree or disagree"
    a_4 "Somewhat disagree"
    a_5 "Definitely disagree"

    q_29 "The professor showed genuine concern for the students", :pick => :one
    a_1 "Definitely agree"
    a_2 "Somewhat agree"
    a_3 "Don't agree or disagree"
    a_4 "Somewhat disagree"
    a_5 "Definitely disagree"

    q_30 "The professor was accomodating", :pick => :one
    a_1 "Definitely agree"
    a_2 "Somewhat agree"
    a_3 "Don't agree or disagree"
    a_4 "Somewhat disagree"
    a_5 "Definitely disagree"

    q_31 "The professor was enthusiastic about the course", :pick => :one
    a_1 "Definitely agree"
    a_2 "Somewhat agree"
    a_3 "Don't agree or disagree"
    a_4 "Somewhat disagree"
    a_5 "Definitely disagree"

    q_32 "The professor organised the course well", :pick => :one
    a_1 "Definitely agree"
    a_2 "Somewhat agree"
    a_3 "Don't agree or disagree"
    a_4 "Somewhat disagree"
    a_5 "Definitely disagree"

    label "Miscellaneous"

    q_33 "The professor was good looking", :pick => :one
    a_1 "Sexiest man/woman alive"
    a_2 "Definitely agree"
    a_3 "Somewhat agree"
    a_4 "Don't agree or disagree"
    a_5 "Somewhat disagree"
    a_6 "Definitely disagree"
    a_7 "Like Gary Busey after a fight with Mohammed Ali"

    q_34 "The professor was a snappy dresser", :pick => :one
    a_1 "Impeccable fashion taste"
    a_2 "Definitely agree"
    a_3 "Somewhat agree"
    a_4 "Don't agree or disagree"
    a_5 "Somewhat disagree"
    a_6 "Definitely disagree"
    a_7 "Thinks oversized jorts are a good idea"

    q_35 "The professor smelled nice", :pick => :one
    a_1 "Like a boquet of roses"
    a_2 "Definitely agree"
    a_3 "Somewhat agree"
    a_4 "I'm not creepy enough to answer this question"
    a_5 "Somewhat disagree"
    a_6 "Definitely disagree"
    a_7 "Like that milk you forgot to put in the fridge, finely aged a few years"

    q_36 "How good is the professor at making enemies", :pick => :one
    a_1 "As many enemies as that sweet grandma who bakes everyone free pie"
    a_2 "Definitely agree"
    a_3 "Somewhat agree"
    a_4 "Don't agree or disagree"
    a_5 "Somewhat disagree"
    a_6 "Definitely disagree"
    a_7 "Meek Mill"

    q_37 "How likely are you to sit and have a beer with the professor", :pick => :one
    a_1 "Chillest prof on the planet"
    a_2 "Definitely agree"
    a_3 "Somewhat agree"
    a_4 "Don't agree or disagree"
    a_5 "Somewhat disagree"
    a_6 "Definitely disagree"
    a_7 "If you paid me I still wouldn't do it"
  end
end
