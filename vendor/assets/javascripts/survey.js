(function() {
  var course_id, ready, sendDataToServer;

  course_id = location.search.split('course=')[1];

  sendDataToServer = function(survey) {
    var surveyResponse;
    surveyResponse = {
      "response": survey.data
    };
   $.ajax({
      type: 'POST',
      headers: {
        'X-CSRF-Token': $('meta[name="csrf token"]').attr('content')
      },
      url: "/surveys/save?course=" + course_id,
      data: surveyResponse,
      dataType: JSON
    });
    window.location.replace("/results?course="+course_id);
  };

  ready = function() {
    var survey;
    survey = new Survey.Survey(surveyJSON, "surveyContainer");
    survey.onComplete.add(sendDataToServer);
  };

  $(document).ready(ready);

  $(document).on('page:load', ready);

}).call(this);
