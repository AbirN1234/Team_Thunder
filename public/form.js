$(document).ready(function () {
    var i=2;
    var j=2;
    $('#wAdd').click(function(){
        var row= $('#exp1').closest('row');
        if(i<3){
            row.append(`<div class="col-12 mb-2"><input type="text" name="exp${i}" id="exp${i}" class="form-control" required></div>`);
            i=i+1;
        }
    });
    $('#qAdd').click(function(){
        var row= $('#q1').closest('row');
        if(i<3){
            row.append(`<div class="col-12 mb-2"><input type="text" name="q${i}" id="q${i}" class="form-control" required></div>`);
            i=i+1;
        }
    })
});