(function() {
  var course_id, ready, sendDataToServer;

  course_id = location.search.split('course=')[1];

  sendDataToServer = function(survey) {
    var surveyResponse;
    surveyResponse = {
      "response": survey.data
    };
    return $.ajax({
      type: 'POST',
      headers: {
        'X-CSRF-Token': $('meta[name="csrf token"]').attr('content')
      },
      url: "/surveys/save?course=" + course_id,
      data: surveyResponse,
      dataType: JSON
    });
  };

  ready = function() {
    var survey;
    survey = new Survey.Survey(surveyJSON, "surveyContainer");
    return survey.onComplete.add(sendDataToServer);
  };

  $(document).ready(ready);

  $(document).on('page:load', ready);

}).call(this);
