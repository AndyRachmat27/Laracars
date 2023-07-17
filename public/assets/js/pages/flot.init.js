!function(t){"use strict";var a=function(){this.$body=t("body"),this.$realData=[]};a.prototype.createPlotGraph=function(a,o,e,r,l,i,s,n){t.plot(t(a),[{data:o,label:l[0],color:i[0]},{data:e,label:l[1],color:i[1]},{data:r,label:l[2],color:i[2]}],{series:{lines:{show:!0,fill:!0,lineWidth:2,fillColor:{colors:[{opacity:.5},{opacity:.5}]}},points:{show:!1},shadowSize:0},legend:{position:"nw",backgroundColor:"transparent"},grid:{hoverable:!0,clickable:!0,borderColor:s,borderWidth:1,labelMargin:10,backgroundColor:n},yaxis:{min:0,max:300,tickColor:"rgba(166, 176, 207, 0.1)",font:{color:"#9295a4"}},xaxis:{tickColor:"rgba(166, 176, 207, 0.1)",font:{color:"#9295a4"}},tooltip:!0,tooltipOpts:{content:"%s: Value of %x is %y",shifts:{x:-60,y:25},defaultTheme:!1}})},a.prototype.createPieGraph=function(a,o,e,r){var l=[{label:o[0],data:e[0]},{label:o[1],data:e[1]},{label:o[2],data:e[2]}],i={series:{pie:{show:!0}},legend:{show:!0,backgroundColor:"transparent"},grid:{hoverable:!0,clickable:!0},colors:r,tooltip:!0,tooltipOpts:{content:"%s, %p.0%"}};t.plot(t(a),l,i)},a.prototype.randomData=function(){for(this.$realData.length>0&&(this.$realData=this.$realData.slice(1));this.$realData.length<300;){var t=(this.$realData.length>0?this.$realData[this.$realData.length-1]:50)+10*Math.random()-5;t<0?t=0:t>100&&(t=100),this.$realData.push(t)}for(var a=[],o=0;o<this.$realData.length;++o)a.push([o,this.$realData[o]]);return a},a.prototype.createRealTimeGraph=function(a,o,e){return t.plot(a,[o],{colors:e,series:{lines:{show:!0,fill:!0,lineWidth:2,fillColor:{colors:[{opacity:.45},{opacity:.45}]}},points:{show:!1},shadowSize:0},grid:{show:!0,aboveData:!1,color:"#dcdcdc",labelMargin:15,axisMargin:0,borderWidth:0,borderColor:null,minBorderMargin:5,clickable:!0,hoverable:!0,autoHighlight:!1,mouseActiveRadius:20},tooltip:!0,tooltipOpts:{content:"Value is : %y.0%",shifts:{x:-30,y:-50}},yaxis:{min:0,max:100,tickColor:"rgba(166, 176, 207, 0.1)",font:{color:"#9295a4"}},xaxis:{show:!1}})},a.prototype.createDonutGraph=function(a,o,e,r){var l=[{label:o[0],data:e[0]},{label:o[1],data:e[1]},{label:o[2],data:e[2]},{label:o[3],data:e[3]},{label:o[4],data:e[4]}],i={series:{pie:{show:!0,innerRadius:.7}},legend:{show:!0,backgroundColor:"transparent",labelFormatter:function(t,a){return'<div style="font-size:12px;">&nbsp;'+t+"</div>"},labelBoxBorderColor:null,margin:50,width:20,padding:1},grid:{hoverable:!0,clickable:!0},colors:r,tooltip:!0,tooltipOpts:{content:"%s, %p.0%"}};t.plot(t(a),l,i)},a.prototype.init=function(){this.createPlotGraph("#website-stats",[[0,50],[1,130],[2,80],[3,70],[4,180],[5,105],[6,250]],[[0,80],[1,100],[2,60],[3,120],[4,140],[5,100],[6,105]],[[0,20],[1,80],[2,70],[3,140],[4,250],[5,80],[6,200]],["Desktops","Laptops","Tablets"],["#f0f1f4","#5b73e8","#f1b44c"],"rgba(166, 176, 207, 0.1)","transparent"),this.createPieGraph("#pie-chart #pie-chart-container",["Desktops","Laptops","Tablets"],[20,30,15],["#5b73e8","#f1b44c","#ebeff2"]);var a=this.createRealTimeGraph("#flotRealTime",this.randomData(),["#34c38f"]);a.draw();var o=this;!function e(){a.setData([o.randomData()]),a.draw(),setTimeout(e,(t("html").hasClass("mobile-device"),1e3))}(),this.createDonutGraph("#donut-chart #donut-chart-container",["Desktops","Laptops","Tablets"],[29,20,18],["#f0f1f4","#5b73e8","#34c38f"])},t.FlotChart=new a,t.FlotChart.Constructor=a}(window.jQuery),function(t){"use strict";window.jQuery.FlotChart.init()}();