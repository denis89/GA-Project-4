$(document).ready(function() {
  // define our variables
  var category = $('#category');
  var subcategory = $('#subcategory');
  
  // add an event listener to get the countries in that region when I change regions
  category.on('change', getCountries);
  // add an event listener to get the country data for the country when I change countries
  subcategory.on('change', getCountryData);

  function getCountries(e) {
    var category = $(this).val();

    $.ajax({
      type: 'GET',
      url: 'http://localhost:3000/ads/new' + category
    })
    .done(function(response) {
      category.empty();

      $.each(response, function(index, country) {
        category.append('<option value="' + country.name + '">' + country.name + '</option>');
      });

      category.prepend('<option value="default">-- Select your country --</option>');
    });
  }

  function getCountryData(e) {
    var subcategory = $(this).val();

    $.ajax({
      type: 'GET',
      url : 'http://restcountries.eu/rest/v1/name/' + subcategory
    })
    .done(function(response) {
      var country = response[0];

      var countryTemplate = '<h1>' + country.name + '</h1>';
      countryTemplate += '<h2>' + country.capital + '</h2>';
      countryTemplate += '<p>Population: ' + numeral(country.population).format('0,0') + '</p>';
      countryTemplate += '<img src="http://www.geonames.org/flags/x/' + country.alpha2Code.toLowerCase() + '.gif">';

      results.html(countryTemplate);
    });
  }
});
