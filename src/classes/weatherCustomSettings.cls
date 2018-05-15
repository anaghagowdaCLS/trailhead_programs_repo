public class weatherCustomSettings {
	public static HttpResponse makeGetCallout() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        WeatherURL__c wurl=new WeatherURL__c();
        List<WeatherURL__c> url=[select APIID__c,EndPoint__c,searchBy__c from weatherURL__c];
        request.setEndpoint('http://api.openweathermap.org/data/2.5/weather?q=Delhi&appid=056b4f59ca9ada8df804ffc50f08f238');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        System.debug(response.getBody());
        return response;
    }
}