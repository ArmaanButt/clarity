#= require knockout-min
#= require survey.bootstrap.min
sendDataToServer = (survey) ->
  surveyResponse = {"response":survey.data}
  alert(surveyResponse)
  $.ajax({
    type:'POST',
    headers: {'X-CSRF-Token': $('meta[name="csrf token"]').attr('content')},
    url: "/surveys/save?course_id=4081",
    data: surveyResponse,
    success: alert("saved"),
    dataType: JSON
    })

$ ->
  survey = new Survey.Survey(surveyJSON, "surveyContainer")
  survey.onComplete.add(sendDataToServer)
