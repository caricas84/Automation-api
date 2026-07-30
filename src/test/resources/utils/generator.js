function fn() {

     var random = java.util.UUID.randomUUID().toString().substring(0,8);

     return {

         user: function(){

             return {
                 name: "Usuario " + random,
                 username: "user_" + random,
                 email: random + "@mail.com"
             };

         }

     };

 }