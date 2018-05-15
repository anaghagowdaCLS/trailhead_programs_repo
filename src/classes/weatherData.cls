public class weatherData {
	public static HttpResponse makeGetCallout() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('http://api.openweathermap.org/data/2.5/weather?q=Delhi&appid=056b4f59ca9ada8df804ffc50f08f238');
        request.setMethod('GET');
       HttpResponse response = http.send(request);
        System.debug(response.getBody());
       /* if(response.getStatusCode() == 200){
            fromJSON js= (fromJSON) System.JSON.deserialize(response.getBody(), fromJSON.class);
            System.debug(js.name);
            WeatherData__c w = new WeatherData__c();
             w.country__c = js.sys.country;
        w.humidity__c = js.main.humidity;
        w.lat__c = js.Coord.lat;
        w.lon__c = js.Coord.lon;
        w.temp__c = js.Main.temp;
        w.winddeg__c = js.Wind.speed;
        w.windspeed__c = js.Wind.speed;
        w.city__c = js.name;
        w.pressure__c = js.main.pressure;
            try{
            upsert w w.city__c;
            }catch(Exception e) {
    	System.debug('An unexpected error has occurred: ' + e.getMessage());
		}
        }*/
        return response;
    }
}