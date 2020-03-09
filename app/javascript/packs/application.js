import "bootstrap";

var id = 1105476746477957
var url = `https://streaming-graph.facebook.com/${id}/live_comments?access_token=EAASlfcqhS6MBADeZCIYMk6vaAb966ghu3NMcyJZCZAmObHHTQ2uwCmYZAUlWSaxuRgMBaoMoBSg10WyJrZCTbJjYCuTyOKbha8RNOj924KjVEJqficwAeFoFtzDK3TmuhZBrblwuRKiw7ujXZCcgXY2oMpejGRJt1OTyp6m8hqPAOutx3TiXK0N4egZCZARGGtc8ZD&comment_rate=one_per_two_seconds&fields=from{name,id},message`
var source = new EventSource(url);

source.onmessage = function(event) {
  console.log(event)
};



import { store } from '../components/store';
store();

import { home } from '../components/home';
home();

import { newproduct } from '../components/newproduct';
newproduct();





// $(document).ready(function(){
//   $("#Makeup").hide();
//   $("#Clothes").hide();
//   $("#Bags").hide();
//   $("#Shoes").hide();

//   $("input:radio[name='kind']").change(function(){

//     if(this.value == 'Makeup' && this.checked){
//       $("#Makeup").show();
//     }else{
//       $("#Makeup").hide();
//     }

//   });

// });
