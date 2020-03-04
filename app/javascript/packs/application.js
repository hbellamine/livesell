import "bootstrap";


var id = 537938066831571
var url = `https://streaming-graph.facebook.com/${id}/live_comments?access_token=EAASlfcqhS6MBADeZCIYMk6vaAb966ghu3NMcyJZCZAmObHHTQ2uwCmYZAUlWSaxuRgMBaoMoBSg10WyJrZCTbJjYCuTyOKbha8RNOj924KjVEJqficwAeFoFtzDK3TmuhZBrblwuRKiw7ujXZCcgXY2oMpejGRJt1OTyp6m8hqPAOutx3TiXK0N4egZCZARGGtc8ZD&comment_rate=one_per_two_seconds&fields=from{name,id},message`
var source = new EventSource(url);

source.onmessage = function(event) {
  console.log(event)
};
