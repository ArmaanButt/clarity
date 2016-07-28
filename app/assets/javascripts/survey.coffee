#= require knockout-min
#= require survey.bootstrap.min

sendDataToServer = (survey) ->
  resultAsString = JSON.stringify(survey.data)
  alert(resultAsString)

$ ->
  survey = new Survey.Survey(surveyJSON, "surveyContainer")
  survey.onComplete.add(sendDataToServer)
