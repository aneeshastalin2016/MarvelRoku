function getComics()
    url = "https://gateway.marvel.com:443/v1/public/comics?apikey=e6c662353edebcd4f1ae2ad30f90173e&ts=1721896953&hash=9cd7cd42321e23750c0e328eef6a67eb"
    request = CreateObject("roUrlTransfer")
    if request <> invalid then
        request.SetUrl(url)
        
        ' Send the request and get the response
        response = request.GetToString()
        
        ' Check if the response is valid
        if response <> invalid then
            ' Parse the JSON response
            jsonresponse = ParseJson(response)
            
            ' Do something with jsonresponse
            ' ...
            
            return jsonresponse
        else
            ' Handle invalid response
            return invalid
        end if
    else
        ' Handle invalid request object
        print "Error: Failed to initialize request object"
        return invalid
    end if
End Function

function getComicCharacters(comicId as Integer) as Object
    url = "https://gateway.marvel.com:443/v1/public/comics/" + comicId.ToStr() + "/characters?apikey=e6c662353edebcd4f1ae2ad30f90173e&ts=1721896953&hash=9cd7cd42321e23750c0e328eef6a67eb"
    request = CreateObject("roUrlTransfer")
    request.SetUrl(url)
    response = request.GetToString()
    jsonResponse = ParseJson(response)
    return jsonResponse.data.results
end function
