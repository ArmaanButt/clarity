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
//= require turbolinks
//= require bootstrap.min
//= require_tree .
//= require commontator/application
//= require jquery.dataTables.min
//= require dataTables.bootstrap
//= require courseinfo
//= require jput.min

var surveyJSON = { title: "Tell us, what technologies do you use?", pages: [
  { name:"page1", questions: [
      { type: "radiogroup", choices: [ "Yes", "No" ], isRequired: true, name: "frameworkUsing",title: "Do you use any front-end framework like Bootstrap?" },
      { type: "checkbox", choices: ["Bootstrap","Foundation"], hasOther: true, isRequired: true, name: "framework", title: "What front-end framework do you use?", visible: false }
   ]},
  { name: "page2", questions: [
    { type: "radiogroup", choices: ["Yes","No"],isRequired: true, name: "mvvmUsing", title: "Do you use any MVVM framework?" },
    { type: "checkbox", choices: [ "AngularJS", "KnockoutJS", "React" ], hasOther: true, isRequired: true, name: "mvvm", title: "What MVVM framework do you use?", visible: false } ] },
  { name: "page3",questions: [
    { type: "comment", name: "about", title: "Please tell us about your main requirements for Survey library" } ] }
 ],
 triggers: [
  { type: "visible", operator: "equal", value: "Yes", name: "frameworkUsing", questions: ["framework"]},
  { type: "visible", operator: "equal", value: "Yes", name: "mvvmUsing", questions: ["mvvm"]}
 ]
};
