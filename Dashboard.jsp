<%-- 
    Document   : Dashboard
    Created on : Mar 31, 2019, 11:48:17 AM
    Author     : MS_PC
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="Translate_Language.jsp"%>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farm-Input</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <script src="bootstrap/fonts/glyphicons-halflings-regular.eot"></script>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
       
    
    <style>
        body{
            background-image: url(dshboardImage/wlp2.jpg);
            background-repeat: repeat-y;
            background-size: cover; 
        }
        #b1{
            
        }
        
        #new1{
            position: relative;
            height:520px;
            border:2px solid #007bff;
            border-radius: 10px;
             margin-right: 0px;
             background-image: url("dshboardImage/background3.jpg");
             background-repeat: no-repeat;
             background-size: cover;
             margin-top: 150px;
        }
        #img1{
           position: relative;   
           margin: -890px -150px;
          transform: skewY(-15deg);
          }
          #tst{
           position: relative;   
            width:40%;
          box-shadow: 0px 7px 15px 6px cyan;    
              
          } 
          
          #I1{
              text-decoration: none;   background-color: #FFF2B3; 
              border-radius: 12px;    width:10%;
             
          }
          
          
        #btn1{
            position: absolute;
            margin:430px 0px;
            width: 16%; height:13%;
           
        }
        #btn3{
            position: relative;
            margin:430px 210px;
            width: 100px;
        }
        
img{
     display:block;
   width:97%;
  height:auto;
}
.imgItem{
     display:block;
   width:20%;
  height:auto;
}

                             #agr1{
                                    border-radius: 12px;
                                    margin: 10px 10px; width: 300px; height:340px;
                                    background: rgba(0,0,0,0.5);
                                     
                                 }

                                 #s1{
                                     background: rgba(0,0,0,0.5);
                                 }   
                                 #s2{
                                     color: red  ;
                                 }
                            #frame{
                            }     

 .content1{
    position:absolute;
    margin:280px -400px;
    left:50%; 
    transform:translate(50%,-50%);
    color:wheat;
    text-transform:uppercase; 
    font-size:30px;
}

 .overlay1{
      border: 2px solid purple;
      border-radius: 12px;
    position:absolute;
    top:0;  bottom:0; 
   height:100%;    width:95%;
   margin-left: 0px;
    opacity:0;
   transition:.5s ease;
   background:rgba(255,5,29,0.9);

}
 .wrapper1:hover .overlay1{
   opacity: 1 ;
}
        
  .content2{
    position:absolute;
    margin:280px -400px;
    left:50%;
    transform:translate(50%,-50%);
    color:wheat;
    text-transform:uppercase; 
    font-size:30px;
}

 .overlay2{
      border: 2px solid purple;
      border-radius: 12px;
     position:absolute;
    top:0;   right:0;  left:14px;
   height:100%; width:95%;
    opacity:0;
   transition:.5s ease;
   background:rgba(255,5,29,0.9);

}
 .wrapper2:hover .overlay2{
   opacity:1;
}
      
    .content3{
    position:absolute;
    margin:280px -400px;
    left:50%;
    transform:translate(50%,-50%);
    color:wheat;
    text-transform:uppercase; 
    font-size:30px;
}

 .overlay3{   border: 2px solid purple;
               border-radius: 12px;
    position:absolute;
    top:0;  right:0;
   height:100%;  width:95%;
     left: 14px;
     opacity:0;
   transition:.5s ease;
   background:rgba(255,5,29,0.9);

}
 .wrapper3:hover .overlay3{
   opacity:1;
}

  .content4{
      
    position:absolute;
    margin:280px -400px;
    left:50%;
    transform:translate(50%,-50%);
    color:wheat;
    text-transform:uppercase; 
    font-size:30px;
}

  .overlay4{
     border: 2px solid purple;
     border-radius: 12px;
    position:absolute;
    top:0;   right:0;
   height:100%;  width:95%;
     left: 14px;
    opacity:0;
   transition:.5s ease;
   background:rgba(255,5,29,0.9);

}
  .wrapper4:hover .overlay4{
   opacity:1;
}


   .soil1{
    border-radius: 12px;
    width:350px; height: 370px; 
    font-size: 15px;
    margin-top: -90px;
    
}

  .soil2{
    border-radius: 12px;
    width:350px; height: 370px;
    font-size: 15px;
    margin-top: -90px;
    
}
  .soil3{
    border-radius: 12px;
    width:350px; height: 370px;  
    font-size: 15px;
    margin-top: -90px;
    
}
  .soil4{
    border-radius: 12px;
    width:350px;  height: 370px;
    font-size: 15px;
    margin-top: -90px;
    
}



#f1{
    margin-top: 1150px;
    border:2px solid #006699;
    border-radius: 25px;
    background-color: gray;
}

        </style>
    </head>
    <body >
   
        <%
           Connection con;        
           Class.forName("com.mysql.jdbc.Driver");
           System.out.print("driver has been installed");
             String url="jdbc:mysql://localhost:3306/farm_input";
           con= DriverManager.getConnection(url,"root","");
             System.out.print("has been connectioned");

        %>
  <div id="b1">      
        <div class="container">
            <nav class="navbar navbar-inverse" style="border-radius: 12px;">
                <div class="container-fluid" >
               <a class="navbar-brand navbar-link" href="#"><img src="dshboardImage/logo1.png"  class="img-circle img-fluid" style=" width:40%; height: 275%; margin-top: -8%; border:2px solid red;"> </a>
                                                                                                                                   
                <div class="navbar-header">
                    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="navcol-1" style="">
                    <ul class="nav navbar-nav"></ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active" role="presentation"><a href="Dashboard.jsp"><strong>Home </strong></a></li>
                        
                        <li role="presentation"><a href="HOME_Program_Vedio.jsp" target="_blank"><strong>Program and Video</strong></a></li>
                        <li role="presentation"><a href="User_register.jsp"><strong>Sign Up</strong></a></li>
                        
                        <li role="presentation" class="dropdown "> <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" ><strong>Login</strong><span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li class="nav-item"><a  class="nav-link" href="User_login.jsp">User</a></li>
                                <li class="nav-item"><a  class="nav-link" href="login_admin.jsp">Admin</a></li>
                             </ul>
                        </li>
                        
                        <li  class="dropdown nav-item" ><a href=""  class="dropdown-toggle nav-link" data-toggle="dropdown">Translate<span class="caret"></span></a>
                               <ul class="dropdown-menu ">
                                   <li class="active nav-item" > <a class="nav-link" href="" >Hindi<b class=" glyphicon glyphicon-arrow-up"  style="margin-left: 5px;"></b></a></li>
                                   <li class="nav-item"> <a class="nav-link" href="#" >English<b class=" glyphicon glyphicon-bold"  style="margin-left: 5px;"></b></a></li>
                                   <li class="nav-item"><a class="nav-link" href="#" >Urdu<b class=" glyphicon glyphicon-bed"  style="margin-left: 5px;"></b></a></li>
                                   <li class="nav-item"><a class="nav-link" href="#" >Punjabi<b class=" glyphicon glyphicon-font"  style="margin-left: 5px;"></b></a>  </li>
                               </ul>
                        </li>
                        <li>     <div class="row btn-group responsive " style="margin: 9px -12px; ">   <form >
                                <input type="text" name="name" class="container btn btn-info col-sm-9  " placeholder="Search">
                                <input type="submit"  class="container btn btn-primary col-sm-3 icon-bar" > <span class="glyphicon"></span></form>
                                </div>
                        <li>
                    </ul>
                </div>
            </div>
        </nav></div>
        
      
    <div class="container-fluid  p-3 mb-2 text-white  "  >
        <div class="container-fluid">
            <div id="myslider" class="carousel slide" data-ride="carousel"  >
                <ol class="carousel-indicators">
                    <li data-target="#myslider" data-slide-to="o" class="active"></li>
                    <li data-target="#myslider" data-slide-to="1" ></li>
                    <li data-target="#myslider" data-slide-to="2" ></li>
                </ol>
                <div class="carousel-inner"  style="position: relative; height:550px;">
                    <div class="item active" >
                        <img src="dshboardImage/f2.jpeg" width="100%" height="20%"> </div>
                    <div class="item ">
                        <img src="dshboardImage/f5.jpg" width="100%" height="20%"> </div>
                    <div class="item ">
                        <img src="dshboardImage/f4.jpeg" width="100%" height="20%">   </div>
            
                </div>
                 <a class="carousel-control left" href="#myslider" data-slide="prev" >
                    <span class="glyphicon glyphicon-arrow-left " ></span>
                </a>
                <a class="carousel-control right" href="#myslider" data-slide="next" >
                    <span class="glyphicon glyphicon-arrow-right " ></span>
                </a>
            
            </div>
        </div>
    </div>
        
        
  <!---------_________---------________-------________----------________----------_______------>      
        
         <div class=" container  " id="new1" >
                <a class="container btn btn-info btn-lg " role="button" href="#" id="btn1">Information</a>
                <a class="container btn btn-warning btn-lg " role="button" href="Nature_Dashboard.jsp" target="_blank" id="btn3">Nature</a>
                <div class="control-label" id="img1">
                <img  class="  img-rounded"  id="tst" src="dshboardImage/agr2.jpg" alt="No avaliable" >  
                </div>
          </div>
        
     
    
  <!-------------------------------------------------------------------------------------------->
  
  <div class="  container-fluid " style="border:2px solid red; 
                                           border-radius: 15px ;
                                           margin-top: 150px; ">
      <div class=" container  col-sm-3  " id="agr1" style=" border-radius: 12px" >
          <p class="container " style="background-color: lightgreen; width: 264px; ">Agriculture and Input solution</p>
            
          <ul class=" nav   navbar-left " style="margin-left: 55px" >
                            <li class="btn btn-info btn-sm" id="s1"><a href="HOME_soilDisplay.jsp" target="image">soil</a></li>     
                            <li class="dropdown nav-item  btn btn-info btn-sm " id="s1">
                             <a  href="#" class=" nav-link dropdown-toggle" data-toggle="dropdown"><span class=" glyphicon glyphicon-leaf " aria-hidden="" style="margin-left: 0px;"></span>Seeds<b class="caret" ></b></a>
                                 <ul class="dropdown-menu " id="s1">
                                     <li class="nav-item " id="s2"><a  href="HOME_seedDisplay.jsp" target="image" style="margin-left: 50px;"  >Varieties
                                             <span class=" glyphicon glyphicon-leaf " aria-hidden="true " style="margin-left: 10px;"></span></a></li>
                                     <!--<li class="nav-item " id="s2"><a class="nav-link "href="Seed_Input.jsp" target="_blank" style="margin-left: 50px;" >Calculate Input<span class=" glyphicon glyphicon-leaf " aria-hidden="true " style="margin-left: 10px;"></span></a></li>-->
                                 </ul>
                            </li>
                            <li class="dropdown nav-item btn btn-info btn-sm" id="s1">
                           <a  href="#"  class=" nav-link dropdown-toggle" data-toggle="dropdown"> <span class=" glyphicon glyphicon-tree-deciduous " aria-hidden="" style="margin-left: 0px;"></span>Fertilizers<b class="caret" ></b></a>
                                 <ul class="dropdown-menu " id="s1">
                                     <li class="nav-item" id="s2"><a class="nav-link "href="HOME_FertilizerDisplay.jsp"  target="image"  style="margin-left: 65px;">varieties<span class=" glyphicon glyphicon-tree-deciduous " aria-hidden="true " style="margin-left: 10px;"></span></a></li>
                                     <li class="nav-item" id="s2"><a class="nav-link "href="HOME_Fert_inputOnly.jsp" target="_blank"  style="margin-left: 65px;">Calculate Input<span class=" glyphicon glyphicon-tree-deciduous " aria-hidden="true " style="margin-left: 10px;"></span></a></li>
                                 </ul>
                            </li>  
                             <li class="dropdown nav-item btn btn-info btn-sm" id="s1">
                                 <a  href="#"  class=" nav-link dropdown-toggle" data-toggle="dropdown"> <span class=" glyphicon glyphicon-tree-deciduous " aria-hidden=" " style="margin-left: 0px;"></span>Pesticides<b class="caret" ></b></a>
                                 <ul class="dropdown-menu " id="s1">
                                     <li  id="s2"><a class="nav-link "href="HOME_Safe_Practices.jsp" target="_blank" style="margin-left: 65px;">Safe Practices<span class=" glyphicon glyphicon-random " aria-hidden=" " style="margin-left: 10px;"></span></a></li>
                                     <li id="s2"><a class="nav-link "href="HOME_PesticidesDisplay.jsp" target="image" style="margin-left: 65px;">crop Practices<span class=" glyphicon glyphicon-tree-conifer " aria-hidden=" " style="margin-left: 10px;"></span></a></li>
                                <!--     <li id="s2"><a class="nav-link "href="#" style="margin-left: 65px;">District Practices<span class=" glyphicon glyphicon-home " aria-hidden=" " style="margin-left: 10px;"></span></a></li> -->
                                     <li id="s2"><a class="nav-link "href="HOME_Pest_inputOnly.jsp"  target="_blank"  style="margin-left: 65px;">Calculate Input<span class=" glyphicon glyphicon-grain " aria-hidden=" " style="margin-left: 10px;"></span></a></li>
                                    <li id="s2"><a class="nav-link "href="HOME_Pest_inputSpray.jsp"  target="_blank"  style="margin-left: 65px;">Spraying Calculator <span class=" glyphicon glyphicon-grain " aria-hidden=" " style="margin-left: 10px;"></span></a></li>
                                 </ul>
                            </li>
                               
                             
                        </ul>
          
                    </div>
                        
                             <div  class=" container col-sm-9 embed-responsive embed-responsive-16by9" src=""   style="width:75% ; height:720px;  background: transparent; ">
                                 <iframe name="image" style="width:106%; height:100%; border-radius: 12px " class="container embed-responsive-item" >
                                     
                                 </iframe>
                             </div>    
                             
                        
            </div>
  
<!-------------------------------------------------------------------------------------------------------------------->   
  






<div class="container " style=" border: 2px solid brown ;
                                       margin-top:150px;   border-radius: 15px; height: 1200px;">
            
                    <div class="col-lg-6  container wrapper1" style="  width: 50%; height: 580px; ">
                        <img  src="dshboardImage/logo2.png" alt="not" class="img-fluid" style="width: 100%; height:100%; border-radius: 10px;"> 
                        <div class="overlay1"> <div class="content1">
                            
                              <ul class="container soil1">
                                <h2 class="container ">Sandy Soil</h2> 
                                    <li>Sandy soil is also called "Light soil"</li>
                                    <li>Sandy soil is composed of 35% sand and less than 15% silt and clay</li>
                                    <li>In this most of the particular are bigger than 2mm in diameter.</li>
                                    <li>Uses- Agriculture,Easy drainage,changing ph.</li>
                                </ul>
                        </div></div>   
                    </div>
   
    
                    <div class="col-lg-6 container wrapper2" style=" width: 50%; height: 580px; ">
                     <img  src="dshboardImage/logo3.png" alt="not" class="img-fluid" style="width: 100%; height:100%;border-radius: 10px;">   
                     <div class="overlay2"> <div class="content2">
                          
                              <ul class="container soil2">
                                <h2 class="container ">Silty Soil</h2>
                                    <li>silt may occur mixed as a sand and clay</li>
                                    <li>silty soil usually well-aggregated.</li>
                                    <li>silt is made up of rock and mineral particles. </li>
                                    <li>Its is found in stream deposits,lake beds and most commonly.</li>
                                </ul>
                         </div></div>
                    </div>
         
        
                    <div class="col-lg-6 container wrapper3" style=" width: 50%; height: 580px; ">
                        <img  src="dshboardImage/logo4.jpg" alt="not" class="img-fluid" style="width: 100%; height:100%;border-radius: 10px;">
                        <div class="overlay3"> <div class="content3">
                            
                                <ul class="container soil3">
                                <h2 class="container ">Peaty Soil</h2> 
                                    <li>Peat adds very little nutrient for plants garden compost. </li>
                                    <li>for vegetable gardens and herbaceous borders,a well-rotted. </li>
                                    <li>peat is something used as a mulch a layer on the soil surface to retain moisture .</li>
                                    
                                </ul>
                            </div></div>
                    </div>
    
    
                <div class="col-lg-6  container wrapper4" style=" width: 50%; height: 580px; ">
                 <img  src="dshboardImage/logo5.png" alt="not" class="img-fluid" style="width: 100%; height:100%;border-radius: 10px;">
                 <div class="overlay4"> <div class="content4">
                     
                          <ul class="container soil4">
                              <h2 class="container"> Loam Soil</h2>
                                    <li>loam soil composed mostly of sand(particle size>63 ),silt(particle size >2 m)</li>
                                    <li>soil is texture, especially its ability to retain nutrients and waterare crucial.</li>
                                    <li>Loam soil is suitable for growing most plant varieties.</li>
                                    
                                </ul>
                     </div></div>
                </div>
           
    </div> 
<!------------------------------------------------------------------------------------------------------------------------>
  
<div class="container "  id="f1">
    <form method="post" action="Like_Feedback.jsp">
        <table class="table">
            <tr>
                <td ><b style="color: #ffcccc; " >NAME &nbsp;:</b></td>
                <td><input type="text" name="name" class="form-control" placeholder="enter name" required=""></td>
            </tr>
            <tr>
                <td ><b style="color: #ffcccc; " >EMAIL &nbsp;:</b></td>
                <td><input type="email" name="email" class="form-control" placeholder="enter email" required=""></td>
            </tr>
            <tr>
                <td ><b style="color: #ffcccc; " >COMMENT &nbsp;:</b></td>
                <td><textarea   rows="3"  name="comm" class="form-control" placeholder="enter comments" required=""> </textarea></td>
            </tr>
            <tr>
                <td><input type="submit" value="LIKE" class="btn-success form-control" style="width: 200px"></td>
                <td><input type="reset" value="RESET" class="btn-primary form-control" style="width: 300px">
<!--                    <input type="hidden" value="R" class="btn-primary form-control" >-->
                </td>
            </tr>
            
        </table>
    </form>
</div>




<!------------------------------------------------------------------------------------------------------------------------->
<div class="container-fluid " style="border:2px solid grey ;background-color: #999999;
                             margin-top: 1280px;height: 160px; ">
    <div class="container col-sm-4" style="border-right:12px; height: 160px;">
        <a href="Dashboard.jsp" ><img class="img-fluid " src="dshboardImage/logo6.png" alt="Sorry!" style="width:30%;"></a>
        <p class="container"  style="margin:-90px 145px; font-size: 32px ;font-family: Brush Script MT, Times, sans-serif;" ><b>A</b>GRICULTURE<br>
             <b style="margin-left: 30px;">F</b>ORCASTING</p>    
    </div> 
    <div class="container col-sm-4" style="border-right:12px; height: 160px;">
        <b style="margin-left: 140px;"> ABOUT</b>   <br>
        <a  href="#" style="text-decoration: none; font-size: 32px ; font-family: Brush Script MT, Times, sans-serif; color: #000066 ; margin-left: 100px;" >About US.</a><br>
<!--        <a  href="#" style="text-decoration: none; font-size: 32px ; font-family: Brush Script MT, Times, sans-serif; color: #000066 ; margin-left: 100px;" >LIKE.
            <img src="" > </a>-->
    </div>
    <div class="container col-sm-4" style="border-right:12px; height: 160px; ">
        <a href="#"><img class="img-responsive" src="dshboardImage/facebook.png"  style="width:15%; margin: 40px 25px ;"></a> 
        <a href="#"><img src="dshboardImage/mail.png" class="img-responsive" style="width:15%; margin: -100px 110px ;"></a> 
    </div>
 </div> 


 </div>
</body>

</html> 