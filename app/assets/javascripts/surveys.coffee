#= require knockout-min
#= require survey.bootstrap.min

course_id = location.search.split('course=')[1]

sendDataToServer = (survey) ->
  resultAsString = JSON.stringify(survey.data)
  alert(resultAsString)
  $.ajax({
    type:'POST',
    headers: {'X-CSRF-Token': $('meta[name="csrf token"]').attr('content')},
    url: "/surveys/save?course_id=" + course_id,
    data: survey.data,
    success: alert("saved"),
    dataType: JSON
    })

$ ->
  survey = new Survey.Survey(surveyJSON, "surveyContainer")
  survey.onComplete.add(sendDataToServer)
