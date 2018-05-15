public class weatherreport {
    public static HttpResponse makeGetCallout() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('http://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=8f2043f8d3b3ba50d285f54eaee164a2');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        return response;
    }      
}