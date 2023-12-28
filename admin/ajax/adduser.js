$(document).ready(function(){
    let uform = $('#uform');
    let fname = $('#ufname');
    let lname = $('#ulname');
    let email = $('#uemail');
    let pass = $('#upass');
    let rpass = $('#urpass');
    let register = $('#uregister');


    register.on('click',function(e){
        e.preventDefault()
function insert(){
        $.ajax({
            url : 'adduserdata.php',
            method : 'POST',
            data : {
                fname : fname.val(),
                lname : lname.val(),
                email : email.val(),
                pass : pass.val(),
                rpass : rpass.val(),


            },
            success : function(data){
             
               alert(data)
                display();
                uform.trigger('reset')
                
            }
        })
    }
    insert()

    })

    function display() {
        $.ajax({
            url: 'ufetch.php', // Update the URL to the PHP script that fetches user data
            method: 'POST',
            success: function (data) {
                console.log(data)
                $('.utab').html(data); // Set the HTML content of utab
            },
        });
    }

    display();


// delete record


// $('tbody').on('click','.delete',function(){
//     let userid= $(this).attr('data-id');

//     $.ajax({
//      url : 'delete.php',
//      method : 'POST',
//      data : {
//          userid : userid
 
//      },
//      success: function(data){
   
        
         
         
         
//      }
//     })
//     display();
    
    
// })



})
