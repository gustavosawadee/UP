all = '{"host": "127.0.0.1", "port": "3306", "socket": "", "user": "root", "password": "", "database": "teste", "query": "select * from pessoa"}';
function ajaxi(){
    $.ajax({
        type: "GET",
        crossDomain: true,
        url: "http://127.0.0.1/index.php",
        data: {
            varAll: all
        },
        dataType: "json",
        success: function (json) {
            console.log(json);
        },
        error: function (ext) {
            console.log(ext);
        }
    });
}
$("#btnTeste").click(ajaxi);