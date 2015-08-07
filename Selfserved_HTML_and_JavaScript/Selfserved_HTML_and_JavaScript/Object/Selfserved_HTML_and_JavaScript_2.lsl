// :CATEGORY:Viewer 2
// :NAME:Selfserved_HTML_and_JavaScript
// :AUTHOR:Becky Pippen
// :CREATED:2010-09-02 11:15:26.630
// :EDITED:2013-09-18 15:39:02
// :ID:736
// :NUM:1005
// :REV:1.0
// :WORLD:Second Life
// :DESCRIPTION:
// Example #2  using body onload= (lag graph example)
// :CODE:
integer face = 4;
string jsURL; // where to fetch external JavaScript
list numbers;
integer numSamples = 50;

// This is self-served in this example, but can be
// moved to an external server:
//
string externalJavascript()
{
    return
        "function bar(widthPct,heightPix) {" +
        " document.writeln(\"<hr style='padding:0;margin:0;" +
        "  margin-top:-1px;text-align:left;align:left;border=0;" +
        "  width:\"+widthPct+\"%;height:\"+heightPix+\"px;" +
        "  background-color:#c22;color:#c22;'>\");}" +
        " function graphBars(arr){for(var i=0;i<arr.length;++i)" +
        "  {bar(arr[i],18);}}";
}

default
{
    state_entry()
    {
        llClearPrimMedia(face);
        llRequestURL();
        integer i = numSamples;
        while (--i >= 0) {
            numbers += 0;
        }
    }

    timer()
    {
        numbers = llList2List(numbers, 1, -1) + [(integer)(6.0 * (45.0 - llGetRegionFPS()))];

        // The dataURI loads external JavaScript functions and calls one with parameters:

        string dataURI = "data:text/html," +
            "<head><script src='" + jsURL + "'></script></head>" +
            "<body onload=\"graphBars([" + llList2CSV(numbers) + "]);\"></body>";

        llSetPrimMediaParams(face, [PRIM_MEDIA_CURRENT_URL, dataURI, PRIM_MEDIA_AUTO_PLAY, TRUE]);
    }

    http_request(key id, string method, string body)
    {
        if (method == URL_REQUEST_GRANTED) {
            jsURL = body; // self-serve the JavaScript
            llSetTimerEvent(1.0);
        } else if (method == "GET") {
            llHTTPResponse(id, 200, externalJavascript());
        }
    }
} 