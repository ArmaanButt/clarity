#= require knockout-min
#= require survey.bootstrap.min

sendDataToServer = (survey) ->
  resultAsString = JSON.stringify(survey.data)
  alert(resultAsString)

ready = ->
  survey = new Survey.Survey(surveyJSON, "surveyContainer")
  survey.onComplete.add(sendDataToServer)
survey.render("surveyContainer");

$(document).ready(ready)
$(document).on('page:load', ready)
