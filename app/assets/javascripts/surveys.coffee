#= require knockout-min
#= require survey.bootstrap.min

sendDataToServer = (survey) ->
  resultAsString = JSON.stringify(survey.data)
  alert(resultAsString)

  $.ajax({
  type:'POST',
  url: "/surveys/save",
  data: survey.data,
  success: alert("saved"),
  dataType: JSON


  });

ready = ->
  survey = new Survey.Survey(surveyJSON, "surveyContainer")
  survey.onComplete.add(sendDataToServer)


$(document).ready(ready)
$(document).on('page:load', ready)
