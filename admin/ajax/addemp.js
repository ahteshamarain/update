$(document).ready(function(){
    let form = $('#eform');
    let fname = $('#efname');
    let lname = $('#elname');
    let email = $('#eemail');
    let pass = $('#epass');
    let rpass = $('#erpass');
    let register = $('#eregister');


    register.on('click',function(e){
        e.preventDefault()
function insert(){
        $.ajax({
            url : 'addempdata.php',
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
                // display();
                form.trigger('reset')
                
            }
        })
    }
    insert()

    })

    // function display() {
    //     $.ajax({
    //         url: 'ufetch.php', // Update the URL to the PHP script that fetches user data
    //         method: 'POST',
    //         success: function (data) {
    //             console.log(data)
    //             $('.utab').html(data); // Set the HTML content of utab
    //         },
    //     });
    // }

    // display();


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
