$(document).ready(function() {

  $('#articleSearchB').on('click', function (e) {
    e.preventDefault();
    // var query = $('#query').val();
    $('#articlesFeed').empty(); // Remove the previous search results.
    // searchArticle(query);

    var query = $(':checkbox:checked').val();

    $('#abcCheckbox').click(function() {
      var query = $(':checkbox:checked').val();
      // searchArticle(query);
    });
    $('#bbcCheckbox').click(function() {
      var query = $(':checkbox:checked').val();
      // searchArticle(query);
    });
    $('#bloombergcheckbox').click(function() {
      var query = $(':checkbox:checked').val();
      // searchArticle(query);
    });
    $('#buzzfeedCheckbox').click(function() {
      var query = $(':checkbox:checked').val();
      // searchArticle(query);
    });
    $('#ftCheckbox').click(function() {
      var query = $(':checkbox:checked').val();
      // searchArticle(query);
    });
    $('#recodeCheckbox').click(function() {
      var query = $(':checkbox:checked').val();
      // searchArticle(query);
    });
    $('#teCheckbox').click(function() {
      var query = $(':checkbox:checked').val();
      // searchArticle(query);
    });
    $('#tvCheckbox').click(function() {
      var query = $(':checkbox:checked').val();
      // searchArticle(query);
    });
  searchArticle(query);
  });

});

var searchArticle = function (query) {

  var newsAPI = 'https://newsapi.org/v1/articles?source=';
  var resultURL = newsAPI + query;

  $.getJSON(resultURL, {
    apiKey: '70d6d73107bc49d5b97429305f965be8',
  }).done(function (results) {
    console.log(results);
    _(results.articles).each(function (ra) {
      console.log(ra);
      console.log(ra.url);
      // var ra = results.articles[0].title;
      var $title = $('<p>');
      $title.text(ra.title);
      $title.appendTo('#articlesFeed');
    });
    // console.log(result);
  });
};
