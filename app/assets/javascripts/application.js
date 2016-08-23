// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.turbolinks
//= require_tree .
//= require bootstrap.min
//= require commontator/application
//= require jquery.dataTables.min
//= require dataTables.bootstrap
//= require courseinfo
//= require jput.min
//= require turbolinks


var surveyJSON = {
    pages: [{
        name: "page1",
        questions: [{
            type: "text",
            name: "question1",
            title: "When did you take this course?"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. It was a required course",
                text: "It was a required course"
            }, {
                value: "2. It was an elective",
                text: "It was an elective"
            }, {
                value: "3. It was a bird course",
                text: "It was a bird course"
            }],
            hasOther: true,
            isRequired: true,
            name: "question2",
            title: "Which of the following options best describes the course?"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Yes",
                text: "Yes"
            }, {
                value: "2. No",
                text: "No"
            }, {
                value: "3. Don't know",
                text: "Don't know"
            }],
            name: "question3",
            title: "Were there participation marks?"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Far above average",
                text: "Far above average"
            }, {
                value: "2. More than average",
                text: "More than average"
            }, {
                value: "3. Slightly more than average",
                text: "Slightly more than average"
            }, {
                value: "4. Average",
                text: "Average"
            }, {
                value: "5. Slightly less than average",
                text: "Slightly less than average"
            }, {
                value: "6. Barely any",
                text: "Barely any"
            }, {
                value: "7. None",
                text: "None"
            }],
            name: "question4",
            title: "How much collaborative work and group projects were there?"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Far above average",
                text: "Far above average"
            }, {
                value: "2. Above average",
                text: "Above average"
            }, {
                value: "3. Average",
                text: "Average"
            }, {
                value: "4. Below average",
                text: "Below average"
            }, {
                value: "5. Far below average",
                text: "Far below average"
            }],
            name: "Rate the professor",
            title: "Rate the professor"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Far above average",
                text: "Far above average"
            }, {
                value: "2. Above average",
                text: "Above average"
            }, {
                value: "3. Average",
                text: "Average"
            }, {
                value: "4. Below average",
                text: "Below average"
            }, {
                value: "5. Far below average",
                text: "Far below average"
            }],
            name: "question6",
            title: "Rate the course content"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Far above average",
                text: "Far above average"
            }, {
                value: "2. Above average",
                text: "Above average"
            }, {
                value: "3. Average",
                text: "Average"
            }, {
                value: "4. Below average",
                text: "Below average"
            }, {
                value: "5. Far below average",
                text: "Far below average"
            }],
            name: "question7",
            title: "Rate the overall course expirience"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. I aced it",
                text: "I aced it"
            }, {
                value: "2. I passed it",
                text: "I passed it"
            }, {
                value: "3. I failed",
                text: "I failed"
            }, {
                value: "4. I dropped",
                text: "I dropped"
            }],
            name: "question8",
            title: "What was the end result of you taking the course"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. A",
                text: "A"
            }, {
                value: "2. B",
                text: "B"
            }, {
                value: "3. C",
                text: "C"
            }, {
                value: "4. D",
                text: "D"
            }, {
                value: "5. F",
                text: "F"
            }],
            name: "question9",
            title: "How did you do?"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Big Bird",
                text: "Big Bird"
            }, {
                value: "2. Very Easy",
                text: "Very Easy"
            }, {
                value: "3. Easy",
                text: "Easy"
            }, {
                value: "4. Average",
                text: "Average"
            }, {
                value: "5. Difficult",
                text: "Difficult"
            }, {
                value: "6. Very Difficult",
                text: "Very Difficult"
            }, {
                value: "7. Oscar the Grouch",
                text: "Oscar the Grouch"
            }],
            name: "question10",
            title: "How easy was this course?"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Yes",
                text: "Yes"
            }, {
                value: "2. No",
                text: "No"
            }, {
                value: "3. Don't Know",
                text: "Don't Know"
            }],
            name: "question11",
            title: "The course objectives were clear"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Yes",
                text: "Yes"
            }, {
                value: "2. No",
                text: "No"
            }, {
                value: "3. Don't know",
                text: "Don't know"
            }],
            name: "question12",
            title: "The course increased my interest in the subject"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Yes",
                text: "Yes"
            }, {
                value: "2. No",
                text: "No"
            }, {
                value: "3. Don't know",
                text: "Don't know"
            }],
            name: "question13",
            title: "The course corresponded to my expectations"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Very easy",
                text: "Very easy"
            }, {
                value: "2. Easy",
                text: "Easy"
            }, {
                value: "3. Average",
                text: "Average"
            }, {
                value: "4. Difficult",
                text: "Difficult"
            }, {
                value: "5. Very difficult",
                text: "Very difficult"
            }],
            name: "question14",
            title: "How easy was the course material  (difficulty of digesting and implementing course materials e.g  in assignments )?"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Very useful",
                text: "Very useful"
            }, {
                value: "2. Somewhat useful",
                text: "Somewhat useful"
            }, {
                value: "3. Averagely useful",
                text: "Averagely useful"
            }, {
                value: "4. Less useful than average",
                text: "Less useful than average"
            }, {
                value: "5. Not useful",
                text: "Not useful"
            }],
            name: "question15",
            title: "How useful was this course for your career?"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Far above average",
                text: "Far above average"
            }, {
                value: "2. Above average",
                text: "Above average"
            }, {
                value: "3. Average",
                text: "Average"
            }, {
                value: "4. Below average",
                text: "Below average"
            }, {
                value: "5. Far below average",
                text: "Far below average"
            }],
            name: "question16",
            title: "How heavy was the workload  (quantity of workload and no. of assignments/deliverables)?"
        }, {
            type: "radiogroup",
            choices: [{
                value: "Definitely agree",
                text: "Definitely agree"
            }, {
                value: "Somewhat agree",
                text: "Somewhat agree"
            }, {
                value: "Don't agree or disagree",
                text: "Don't agree or disagree"
            }, {
                value: "Somewhat disagree",
                text: "Somewhat disagree"
            }, {
                value: "5. Definitely disagree",
                text: "Definitely disagree"
            }],
            name: "question17",
            title: "The course textbooks were clear and well written"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Definitely agree",
                text: "Definitely agree"
            }, {
                value: "2. Somewhat agree",
                text: "Somewhat agree"
            }, {
                value: "3. Don't agree or disagree",
                text: "Don't agree or disagree"
            }, {
                value: "4. Somewhat disagree",
                text: "Somewhat disagree"
            }, {
                value: "5. Definitely disagree",
                text: "Definitely disagree"
            }],
            name: "question18",
            title: "The assignments were appropriate for the level of this class"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Far above average",
                text: "Far above average"
            }, {
                value: "2. Above average",
                text: "Above average"
            }, {
                value: "3. Average",
                text: "Average"
            }, {
                value: "4. Below average",
                text: "Below average"
            }, {
                value: "5. Far below average",
                text: "Far below average"
            }],
            name: "question19",
            title: "How useful was the textbook?"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Far above average",
                text: "Far above average"
            }, {
                value: "2. Above average",
                text: "Above average"
            }, {
                value: "3. Average",
                text: "Average"
            }, {
                value: "4. Below average",
                text: "Below average"
            }, {
                value: "5. Far below average",
                text: "Far below average"
            }],
            name: "question20",
            title: "How useful was the lecture?"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Far above average",
                text: "Far above average"
            }, {
                value: "2. Above average",
                text: "Above average"
            }, {
                value: "3. Average",
                text: "Average"
            }, {
                value: "4. Below average",
                text: "Below average"
            }, {
                value: "5. Far below average",
                text: "Far below average"
            }],
            name: "question21",
            title: "How useful was the online lecture material?"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Far above average",
                text: "Far above average"
            }, {
                value: "2. Above average",
                text: "Above average"
            }, {
                value: "3. Average",
                text: "Average"
            }, {
                value: "4. Below average",
                text: "Below average"
            }, {
                value: "5. Far below average",
                text: "Far below average"
            }],
            name: "question22",
            title: "How useful were the assignments and projects?"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Far above average",
                text: "Far above average"
            }, {
                value: "2. Above average",
                text: "Above average"
            }, {
                value: "3. Average",
                text: "Average"
            }, {
                value: "4. Below average",
                text: "Below average"
            }, {
                value: "5. Far below average",
                text: "Far below average"
            }],
            name: "question23",
            title: "How useful were the practice problems?"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Far above average",
                text: "Far above average"
            }, {
                value: "2. Above average",
                text: "Above average"
            }, {
                value: "3. Average",
                text: "Average"
            }, {
                value: "4. Below average",
                text: "Below average"
            }, {
                value: "5. Far below average",
                text: "Far below average"
            }],
            name: "question24",
            title: "How useful were the past midterms and exams?"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Definitely agree",
                text: "Definitely agree"
            }, {
                value: "2. Somewhat agree",
                text: "Somewhat agree"
            }, {
                value: "3. Don't agree or disagree",
                text: "Don't agree or disagree"
            }, {
                value: "4. Somewhat disagree",
                text: "Somewhat disagree"
            }, {
                value: "5. Definitely disagree",
                text: "Definitely disagree"
            }],
            name: "question25",
            title: "The professor demonstrated knowledge of the subject matter"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Definitely agree",
                text: "Definitely agree"
            }, {
                value: "2. Somewhat agree",
                text: "Somewhat agree"
            }, {
                value: "3. Don't agree or disagree",
                text: "Don't agree or disagree"
            }, {
                value: "4. Somewhat disagree",
                text: "Somewhat disagree"
            }, {
                value: "5. Definitely disagree",
                text: "Definitely disagree"
            }],
            name: "question26",
            title: "The professor was effective in communicating the content of the course"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Definitely agree",
                text: "Definitely agree"
            }, {
                value: "2. Somewhat agree",
                text: "Somewhat agree"
            }, {
                value: "3. Don't agree or disagree",
                text: "Don't agree or disagree"
            }, {
                value: "4. Somewhat disagree",
                text: "Somewhat disagree"
            }, {
                value: "5. Definitely disagree",
                text: "Definitely disagree"
            }],
            name: "question27",
            title: "The professor had legible handwriting and could be understood well when speaking"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Definitely agree",
                text: "Definitely agree"
            }, {
                value: "2. Somewhat agree",
                text: "Somewhat agree"
            }, {
                value: "3. Don't agree or disagree",
                text: "Don't agree or disagree"
            }, {
                value: "4. Somewhat disagree",
                text: "Somewhat disagree"
            }, {
                value: "5. Definitely disagree",
                text: "Definitely disagree"
            }],
            name: "question28",
            title: "The professor encouraged feedback from the class"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Definitely agree",
                text: "Definitely agree"
            }, {
                value: "2. Somewhat agree",
                text: "Somewhat agree"
            }, {
                value: "3. Don't agree or disagree",
                text: "Don't agree or disagree"
            }, {
                value: "4. Somewhat disagree",
                text: "Somewhat disagree"
            }, {
                value: "5. Definitely disagree",
                text: "Definitely disagree"
            }],
            name: "question29",
            title: "The professor showed genuine concern for the students"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Definitely agree",
                text: "Definitely agree"
            }, {
                value: "2. Somewhat agree",
                text: "Somewhat agree"
            }, {
                value: "3. Don't agree or disagree",
                text: "Don't agree or disagree"
            }, {
                value: "4. Somewhat disagree",
                text: "Somewhat disagree"
            }, {
                value: "5. Definitely disagree",
                text: "Definitely disagree"
            }],
            name: "question30",
            title: "The professor was accomodating"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Definitely agree",
                text: "Definitely agree"
            }, {
                value: "2. Somewhat agree",
                text: "Somewhat agree"
            }, {
                value: "3. Don't agree or disagree",
                text: "Don't agree or disagree"
            }, {
                value: "4. Somewhat disagree",
                text: "Somewhat disagree"
            }, {
                value: "5. Definitely disagree",
                text: "Definitely disagree"
            }],
            name: "question31",
            title: "The professor was enthusiastic about the course"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Definitely agree",
                text: "Definitely agree"
            }, {
                value: "2. Somewhat agree",
                text: "Somewhat agree"
            }, {
                value: "3. Don't agree or disagree",
                text: "Don't agree or disagree"
            }, {
                value: "4. Somewhat disagree",
                text: "Somewhat disagree"
            }, {
                value: "5. Definitely disagree",
                text: "Definitely disagree"
            }],
            name: "question32",
            title: "The professor organised the course well"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Sexiest man/woman alive",
                text: "Sexiest man/woman alive"
            }, {
                value: "2. Definitely agree",
                text: "Definitely agree"
            }, {
                value: "3. Somewhat agree",
                text: "Somewhat agree"
            }, {
                value: "4. Don't agree or disagree",
                text: "Don't agree or disagree"
            }, {
                value: "5. Somewhat disagree",
                text: "Somewhat disagree"
            }, {
                value: "6. Definitely agree",
                text: "Definitely agree"
            }, {
                value: "7. Like Gary Busey after a fight with Mohammed Ali",
                text: "Like Gary Busey after a fight with Mohammed Ali"
            }],
            name: "question33",
            title: "The professor was good looking"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Impeccable fashion taste",
                text: "Impeccable fashion taste"
            }, {
                value: "2. Definitely agree",
                text: "Definitely agree"
            }, {
                value: "3. Somewhat agree",
                text: "Somewhat agree"
            }, {
                value: "4. Don't agree or disagree",
                text: "Don't agree or disagree"
            }, {
                value: "5. Somewhat disagree",
                text: "Somewhat disagree"
            }, {
                value: "6. Definitely agree",
                text: "Definitely agree"
            }, {
                value: "7. Thinks oversized jorts are a good idea",
                text: "Thinks oversized jorts are a good idea"
            }],
            name: "question34",
            title: "The professor was a snappy dresser"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Like a boquet of roses",
                text: "Like a boquet of roses"
            }, {
              value: "2. Definitely agree",
              text: "Definitely agree"
          }, {
              value: "3. Somewhat agree",
              text: "Somewhat agree"
          }, {
              value: "4. Don't agree or disagree",
              text: "Don't agree or disagree"
          }, {
              value: "5. Somewhat disagree",
              text: "Somewhat disagree"
          }, {
              value: "6. Definitely agree",
              text: "Definitely agree"
            }, {
                value: "7. Like that milk you forgot to put in the fridge, finely aged a few years",
                text: "Like that milk you forgot to put in the fridge, finely aged a few years"
            }],
            name: "question35",
            title: "The professor smelled nice"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. As many enemies as that sweet grandma who bakes everyone free pie",
                text: "As many enemies as that sweet grandma who bakes everyone free pie"
              }, {
                value: "2. Definitely agree",
                text: "Definitely agree"
            }, {
                value: "3. Somewhat agree",
                text: "Somewhat agree"
            }, {
                value: "4. Don't agree or disagree",
                text: "Don't agree or disagree"
            }, {
                value: "5. Somewhat disagree",
                text: "Somewhat disagree"
            }, {
                value: "6. Definitely agree",
                text: "Definitely agree"
              }, {
                value: "7. Meek Mill",
                text: "Meek Mill"
            }],
            name: "question36",
            title: "How good is the professor at making enemies"
        }, {
            type: "radiogroup",
            choices: [{
                value: "1. Chillest prof on the planet",
                text: "Chillest prof on the planet"
              }, {
                value: "2. Definitely agree",
                text: "Definitely agree"
            }, {
                value: "3. Somewhat agree",
                text: "Somewhat agree"
            }, {
                value: "4. Don't agree or disagree",
                text: "Don't agree or disagree"
            }, {
                value: "5. Somewhat disagree",
                text: "Somewhat disagree"
            }, {
                value: "6. Definitely agree",
                text: "Definitely agree"
              }, {
                value: "7. If you paid me I still wouldn't do it",
                text: "If you paid me I still wouldn't do it"
            }],
            name: "question37",
            title: "How likely are you to sit and have a beer with the professor"
        }]
    }]
};
