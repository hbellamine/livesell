import "bootstrap";

import Rails from '@rails/ujs';
Rails.start();

//https://www.facebook.com/118160454885294/videos/1039021306498134/
//https://www.facebook.com/273690313255566/videos/874309673010737/

// var id = 874309673010737;
// var access_token = "EAASlfcqhS6MBAIFicMOBs3An2dJXMhSrbPaifbytZAlkfuyFGPnjrENf3ZBSuUWXiNnh5qk8os0xPJbpkA6FtMXGtrbxBbwj3n0v9E3NpUbmUZAq0BJrxcuHaxBWlXAesSCd3HHFZAjQeJiZB02lZAwqBCoKjBzZCcGr36yJZADCq4Hc9dlWB93mlZBdDY3MXVZAQZD"
// var url = `https://streaming-graph.facebook.com/${id}/live_comments?access_token=${access_token}&comment_rate=one_per_two_seconds&fields=from{name,id},message`
// var source = new EventSource(url);

// source.onmessage = function(event) {
//  Json.parse(event.data)
// };

import { store } from '../components/store';
import { home } from '../components/home';
import { newproduct } from '../components/newproduct';
import '../components/chat';
import { refreshChart } from '../components/earningchart';




const livecastshow = document.querySelector('.livecasts.show')
if (livecastshow) {
  refreshChart();
}

const storesshow = document.querySelector('.stores.show')
if (storesshow) {
store();

}




const welcomeindex = document.querySelector('.welcomes.index')
if (welcomeindex) {
home();
}


const productsnew = document.querySelector('.products.new')
if (productsnew) {
newproduct();
}







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
