<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">

  #menulist ,#menu {
   text-decoration:none; 
   color: white;	
}

b{
	padding-bottom:15px;
}

 #fstickfooter
{
    background-color: #353533;   
    border-width: 1px;
    border-style: solid;
    border-color: #c4d9df #a4c3ca #83afb7;            
    padding: 10px;
    margin:;
    overflow: hidden; /* Clear floats */
}
 
 #upload {
    background-color: #eaf8fc;
    border-width: 1px;
    border-style: solid;
    border-color: #c4d9df #a4c3ca #83afb7;            
    width: 530px;
    height: 150px;
    padding: 10px;
    margin: auto 10px;
    margin-top: 75px;
    overflow: hidden; /* Clear floats */
} 
 
.fcol{
     background-color: #353533;
    text-decoration: none;
    border-color: #c4d9df #a4c3ca #83afb7;            
    width:150px;
    padding: 30px;
	float:left;
    margin:;
    overflow: hidden; /* Clear floats */            
}

#submit
{       
    background-color: #6cbb6b;
    background-image: linear-gradient(#95d788, #6cbb6b);
    border-radius: 3px 50px 50px 3px;    
    border-width: 1px;
    border-style: solid;
    border-color: #7eba7c #578e57 #447d43;
    box-shadow: 0 0 1px rgba(0, 0, 0, 0.3), 
                0 1px 0 rgba(255, 255, 255, 0.3) inset;
    height: 35px;
    margin: 0 0 0 10px;
    padding: 0;
    width: 90px;
    cursor: pointer;
    font: bold 14px Arial, Helvetica;
    color: #23441e;    
    text-shadow: 0 1px 0 rgba(255,255,255,0.5);
}

#submit:hover {       
    background-color: #95d788;
    background-image: linear-gradient(#6cbb6b, #95d788);
}   

.last{       
  
     margin-right:150px;

       
}

.first{       
             
    margin-left:150px;
      
}

.centered{       
             
   align-items:center;
      
}

</style>


</head>


<body>

<div id="fstickfooter">
 
    <div id="footer">
      <div class="footer">
  <div class="centered">
    <div class="fcol">
      <div><b id="menu">Site Links</b></div>
      <a id="menulist" href="http://www.4shared.com/">Home</a><br>
      <a id="menulist" href="http://www.4shared.com/premium.jsp?ref=footer">Premium</a><br>
      <a id="menulist" href="http://www.4shared.com/links.jsp">Link to Us</a><br>
      <a id="menulist" href="http://search.4shared.com/search.html">Search</a><br>
    </div>
    <div class="fcol">
      <div><b id="menu">Help</b></div>
      <a id="menulist" href="http://www.4shared.com/web/helpCenter">Support</a><br>
      <a id="menulist" href="http://www.4shared.com/faq.jsp">FAQ</a><br>
      <a id="menulist" href="http://www.4shared.com/tutorial/">Quick Tour</a><br>
      <a id="menulist" href="http://www.4shared.com/features.jsp">Features</a><br>
      <a id="menulist" href="http://www.4shared.com/contact.jsp">Contact Us</a>
    </div>
    <div class="fcol">
      <div><b id="menu">About</b></div>
      <a id="menulist" href="http://www.4shared.com/aboutus.jsp">Company</a><br>
      <a id="menulist" href="http://www.4shared.com/advertise/">Advertising</a><br>
      <a id="menulist" href="http://www.4shared.com/resellers.jsp">Resellers</a><br>
      <a id="menulist" href="http://www.4shared.com/paymentContacts.jsp">Payment Contacts</a><br>
      <a id="menulist" href="http://www.4shared.com/copyright-center.jsp">Copyright</a>
    </div>
    <div class="fcol">
      <div><b id="menu">Legal</b></div>
      <a id="menulist" href="http://www.4shared.com/terms.jsp">Terms of Use</a><br>
      <a id="menulist" href="http://www.4shared.com/privacy.jsp">Privacy</a><br>
      <a id="menulist" href="http://www.4shared.com/dmca.jsp">Copyright Infringement</a><br>
      <a id="menulist" href="http://www.4shared.com/security.jsp">Security</a><br>
      <a id="menulist" href="http://www.4shared.com/musicIdentification.jsp">Music Identification</a><br>
      <a id="menulist" href="http://www.4shared.com/sla.jsp" title="Service Level Agreement">SLA</a><br>
    </div>
    <div class="fcol">
      <div><b id="menu">Sharing</b></div>
      <a id="menulist" href="http://www.4shared.com/4shared-features.jsp#filesh">File Sharing</a><br>
      <a id="menulist" href="http://www.4shared.com/4shared-features.jsp#musicsh">Music Sharing</a><br>
      <a id="menulist" href="http://www.4shared.com/4shared-features.jsp#photosh">Photo Sharing</a><br>
      <a id="menulist" href="http://www.4shared.com/4shared-features.jsp#videosh">Video Sharing</a><br>
      <a id="menulist" href="http://www.4shared.com/4shared-features.jsp#docsh">Document Sharing</a>
    </div>
    <div class="fcol">
      <div><b id="menu">Media</b></div>
      <a id="menulist" href="http://www.4shared.com/press_room/">Press Room</a><br>
      <a id="menulist" href="http://blog.4shared.com/" target="_blank">Blog</a><br>
      <a id="menulist" href="http://twitter.com/4shared" target="_blank" title="Follow us on Twitter" rel="nofollow" style="white-space:nowrap;"><img src="http://static.4shared.com/images/spacer.gif?ver=1912669180" alt="Twitter" class="tw">Twitter</a><br>
      <a id="menulist" href="http://www.facebook.com/official.4shared" target="_blank" title="Follow us on Facebook" rel="nofollow" style="white-space:nowrap;"><img src="http://static.4shared.com/images/spacer.gif?ver=1912669180" alt="Facebook" class="fb">Facebook</a><br>
      <a id="menulist" href="https://plus.google.com/114619261879843970270?rel=author" target="_blank" title="Read Us on Google Plus" rel="nofollow"><img src="http://static.4shared.com/images/spacer.gif?ver=1912669180" alt="Google+" class="gp">Google+</a><br>
    </div>
    <div class="fcol">
      <div><b id="menu">Tools</b></div>
      <a id="menulist" href="http://www.4shared.com/mobile.jsp">4shared Mobile</a><br>
      <a id="menulist" href="http://www.4shared.com/desktop/">4shared Desktop</a><br>
      <a id="menulist" href="http://www.4shared.com/developer/">Developer</a><br>
      </div>
  </div>
  </div>

<div class="copy">
        <div class="centered">
          
          <div class="clear"></div>
        </div>
      </div>
   
  </div>
</div>

</body>
</html>