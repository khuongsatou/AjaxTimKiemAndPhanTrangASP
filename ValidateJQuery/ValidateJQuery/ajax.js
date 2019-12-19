$(this).ready(function () {
    search(1);
});




function search(page) {
    var key = $('#Text1').val();
    $.ajax({
        url: 'Search.aspx/searchCode',
        type: "post",
        data: "{key:'" + key + "',page:'"+page+"'}",
        contentType: 'application/json;charset=utf-8',
        success: function (response) {
            resetList(response);
        },
        error: function (error) {
            alert(error.d);
        }
    });
}


function resetList(data) {
    var lst_json = JSON.parse(data.d);
    var obj = lst_json["obj"];
    
    var table = "";
    for (i = 0; i < obj.length; i++) {
        table += "<tr>"
        table += "<td>" + obj[i].STT + "</td>";
        table += "<td>" + obj[i].TenSP + "</td>";
        table += "<td>" + obj[i].GiaSP + "</td>";
        table += "</tr>"
    }
    $('#result').html(table);
    var record = lst_json["record"];
    var result = "";
    for (var i = 0; i < record.length; i++) {
        var stt = (Number(record[i]) + 1);
        result += "<input type='button' value='" + stt + "' onclick='search(" + stt +")' /> | ";
    }
    
    $('#record').html(result);

}
