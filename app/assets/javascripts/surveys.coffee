#Do not uncomment the code below - Armaan


# course_id = location.search.split('course=')[1]
#
# sendDataToServer = (survey) ->
#   surveyResponse = {"response":survey.data}
#   $.ajax({
#     type:'POST',
#     headers: {'X-CSRF-Token': $('meta[name="csrf token"]').attr('content')},
#     url: "/surveys/save?course=" + course_id,
#     data: surveyResponse,
#     dataType: JSON
#     })
# ready = () ->
#   survey = new Survey.Survey(surveyJSON, "surveyContainer")
#   survey.onComplete.add(sendDataToServer)
#
# $(document).ready(ready)
# $(document).on('page:load', ready)
