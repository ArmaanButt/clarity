#= require knockout-min
#= require survey.bootstrap.min

sendDataToServer = (survey) ->
  resultAsString = JSON.stringify(survey.data)
  alert(resultAsString)


  $.ajax({
  type:'POST',
  beforeSend: test = (xhr)-> return xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf token"]').attr('content'))
  url: "/surveys/save",
  data: survey.data,
  success: alert("saved"),
  dataType: JSON


  });




$ ->
  survey = new Survey.Survey(surveyJSON, "surveyContainer")
  survey.onComplete.add(sendDataToServer)
