const assert = require('assert');
const http = require('http');

describe('HTTP Server Test', function() {
    it('should return 200', function(done) {
        http.get('http://localhost:3000', function(res) {
            assert.equal(res.statusCode, 200);
            done();
        });
    });
});
