var uri = 'https://randomfox.ca/floof/';
var filename = 'image.png';

var download = function(request, response, uri, filename, callback){
  request.head(uri, function(err, res, body){
    console.log('content-type:', res.headers['content-type']);
    console.log('content-length:', res.headers['content-length']);

    request(uri).pipe(fs.createWriteStream(filename)).on('close', callback);

    return request.json({
        status : "coba cek"
    });
  });
};

module.exports = {
    download: download
}