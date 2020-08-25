<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dt...hatssarjy.tistory.com
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>jqGrid Demos</title>
<link rel="stylesheet" type="text/css" media="screen" href="http://trirand.com/blog/jqgrid/themes/redmond/jquery-ui-1.8.1.custom.css" />
<link rel="stylesheet" type="text/css" media="screen" href="http://trirand.com/blog/jqgrid/themes/ui.jqgrid.css" />
<link rel="stylesheet" type="text/css" media="screen" href="http://trirand.com/blog/jqgrid/themes/ui.multiselect.css" />
<script src="http://trirand.com/blog/jqgrid/js/jquery.js" type="text/javascript"></script>
<script src="http://trirand.com/blog/jqgrid/js/jquery-ui-1.8.1.custom.min.js" type="text/javascript"></script>
<script src="http://trirand.com/blog/jqgrid/js/jquery.layout.js" type="text/javascript"></script>
<script src="http://trirand.com/blog/jqgrid/js/i18n/grid.locale-en.js" type="text/javascript"></script>
<script src="http://trirand.com/blog/jqgrid/js/ui.multiselect.js" type="text/javascript"></script>
<script src="http://trirand.com/blog/jqgrid/js/jquery.jqGrid.min.js" type="text/javascript"></script>
<script src="http://trirand.com/blog/jqgrid/js/jquery.tablednd.js" type="text/javascript"></script>
<script src="http://trirand.com/blog/jqgrid/js/jquery.contextmenu.js" type="text/javascript"></script>
<style>

</style>
</head>
<body>
    <table id="list"></table>
    <div id="pager"></div>

<script type="text/javascript">
// jQuery(document).ready(function() {
// 		var prevCellVal = { cellId: undefined, value: undefined };
//        var template_int = { formatter: 'int', align: 'center', sorttype: 'int' };
//        var template_float = { formatter: 'float', align: 'center', sorttype: 'float' };
//        var template_date = { align: 'center', sorttype: 'date' };
//        var col_names = [ '교시', '월', '화','수','목','금' ];
//        var col_model =  [
//                                        { name:'id',index:'id', width:80, template: template_int },
//                                        { name:'invdate',index:'invdate', width:80, template: template_date, 
//                                     	   cellattr: function (rowId, val, rawObject, cm, rdata) {
//                                            var result;

//                                            if (prevCellVal.value == val) {
//                                                result = ' style="display: none" rowspanid="' + prevCellVal.cellId + '"';
//                                            }
//                                            else {
//                                                var cellId = this.id + '_row_' + rowId + '_' + cm.name;

//                                                result = ' rowspan="1" id="' + cellId + '"';
//                                                prevCellVal = { cellId: cellId, value: val };
//                                            }

//                                            return result;
//                                        }
//                                        },
//                                        { name:'name',index:'name', width:80, template: template_int},
//                                        { name:'amount',index:'amount', width:80, template: template_float },
//                                        { name:'tax',index:'tax', width:80, template: template_float },          
//                                        { name:'total',index:'total', width:80, template: template_float }
//                                   ];
//         jQuery("#list").jqGrid({
//                datatype : "local",
//                height : 250,
//                width : 'auto',
//                //date : [{id:"1",invdate:"2007-10-01",name:"test",note:"note",amount:"200.00",tax:"10.00",total:"210.00"}],   //데이터 등록 시 사용.
//                colNames : col_names,
//                colModel : col_model,
//                pager : '#pager',
//                gridview : true,
//                rownumbers : true,
//                rowNum : 10,
//                rowList : [5, 10, 15],
//                caption : '시간표',
//                gridComplete : function() {
//                                           //한 row가 뿌려질때마다 수행 됨.
//                                        }
//         }); 
//         var mydata = [
//                                    {id:"1",invdate:"과목1",name:"",amount:"",tax:"",total:""},
//                                    {id:"2",invdate:"과목1",name:"",amount:"",tax:"",total:""},
//                                    {id:"3",invdate:"",name:"과목2",amount:"",tax:"",total:""},
//                                    {id:"4",invdate:"",name:"과목2",amount:"",tax:"",total:""},
//                                    {id:"5",invdate:"",name:"",amount:"",tax:"",total:""},
//                                    {id:"6",invdate:"",name:"",amount:"",tax:"과목3",total:""},
//                                    {id:"7",invdate:"",name:"",amount:"",tax:"과목3",total:""},
//                                    {id:"8",invdate:"",name:"",amount:"",tax:"",total:""}
//                            ];
//         for(var i=0;i<=mydata.length;i++) {
//                jQuery("#list").jqGrid('addRowData', i+1, mydata[i]);
//         }
//         jQuery("#list").jqGrid.rowNum = 10;
//         gridComplete();
// });

// var gridComplete = function () {
//         var grid = this;
//         $('td[rowspan="1"]', grid).each(function () {
//             var spans = $('td[rowspanid="' + this.id + '"]', grid).length + 1;

//             if (spans > 1) {
//                 $(this).attr('rowspan', spans);
//             }
//         });
// }
var cellAttr = function (rowId, val, rawObject, cm, rdata) {
    var result;

    if (prevCellVal.value == val) {
        result = ' style="display: none" rowspanid="' + prevCellVal.cellId + '"';
    }
    else {
        var cellId = this.id + '_row_' + rowId + '_' + cm.name;

        result = ' rowspan="1" id="' + cellId + '"';
        prevCellVal = { cellId: cellId, value: val };
    }

    return result;
}

var mydata = [
        { id: "1", country: "USA", state: "Texas",      city: "Houston",       attraction: "NASA",               zip: "77058"},
        { id: "2", country: "USA", state: "Texas",      city: "Austin",        attraction: "6th street",         zip: "78704"},
        { id: "3", country: "USA", state: "Texas",      city: "Arlinton",      attraction: "Cowboys Stadium",    zip: "76011"},
        { id: "4", country: "USA", state: "Texas",      city: "Plano",         attraction: "XYZ place",          zip: "54643"},
        { id: "5", country: "USA", state: "Texas",      city: "Dallas",        attraction: "Reunion tower",      zip: "12323"},
        { id: "6", country: "USA", state: "California", city: "Los Angeles",   attraction: "Hollywood",          zip: "65456"},
        { id: "7", country: "USA", state: "California", city: "San Francisco", attraction: "Golden Gate bridge", zip: "94129"},
        { id: "8", country: "USA", state: "California", city: "San Diego",     attraction: "See world",          zip: "56653"},
        { id: "9", country: "USA", state: "California", city: "Anaheim",       attraction: "Disneyworld",        zip: "92802"}
    ];
var prevCellVal = { cellId: undefined, value: undefined };

$("#list").jqGrid({
//     url: 'your WS url'
//     datatype: 'json',
//     mtype: "POST",
//     ajaxGridOptions: {
//         contentType: "application/json"
//     },
    datatype: 'local',
    data: mydata,
    colNames: ['Country', 'State', 'City', 'Attraction', 'Zip code'],
    colModel: [
        { name: 'country', width: 70, align: 'center', cellattr: cellAttr
//             cellattr: function (rowId, val, rawObject, cm, rdata) {
//                         var result;

//                         if (prevCellVal.value == val) {
//                             result = ' style="display: none" rowspanid="' + prevCellVal.cellId + '"';
//                         }
//                         else {
//                             var cellId = this.id + '_row_' + rowId + '_' + cm.name;

//                             result = ' rowspan="1" id="' + cellId + '"';
//                             prevCellVal = { cellId: cellId, value: val };
//                         }

//                         return result;
//                     }
        },
        { name: 'state', width: 80, align: 'center'},
        { name: 'city', width: 90 },
        { name: 'attraction', width: 120 },
        { name: 'zip', index: 'tax', width: 60, align: 'right' }
    ],
    cmTemplate: {sortable: false},
    rowNum: 100,
    gridview: true,
    equalBlank: true ,
    hoverrows: false,
    autoencode: true,
    ignoreCase: true,
    viewrecords: true,
    height: '100%',
    caption: 'Grid with rowSpan attributes',
    beforeSelectRow: function () {
        return false;
    },
    gridComplete: function () {
        var grid = this;

        $('td[rowspan="1"]', grid).each(function () {
            var spans = $('td[rowspanid="' + this.id + '"]', grid).length + 1;

            if (spans > 1) {
                $(this).attr('rowspan', spans);
            }
        });
    }
});




</script>
</body>
</html>