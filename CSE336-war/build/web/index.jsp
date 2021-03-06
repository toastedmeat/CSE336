<%-- 
    Document   : index
    Created on : Apr 10, 2015, 11:03:16 PM
    Author     : Eric
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="formData" class="developerWorks.beans.User" scope="session" />

<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta name="title" content="IBM developerworks: Sign in">
        <meta http-equiv="P3P" content="CP=&quot;IDC DSP COR CURa ADMa OUR IND PHY ONL COM STA&quot;">
        <meta http-equiv="Expires" content="0">
        <link rel="schema.DC" href="http://purl.org/DC/elements/1.0/">
        <link rel="SHORTCUT ICON" href="http://www.ibm.com/favicon.ico">
        <meta name="Owner" content="dW Information/Raleigh/IBM">
        <meta name="DC.Language" scheme="rfc1766" content="en">
        <meta name="IBM.Country" content="US">
        <meta name="Security" content="Public">
        <meta name="Abstract" content="Sign in to developerWorks, register with developerWorks, update your registration information, change or reset your password">
        <meta name="Description" content="Sign in to developerWorks, register with developerWorks, update your registration information, change or reset your password">
        <meta name="Keywords" content="IBM developerWorks registration, profile, sign in, register, password, account, ID">
        <meta name="Source" content="v17 delivery:developerWorks">
        <meta name="Robots" content="index,follow">
        <meta name="IBM.SpecialPurpose" content="SP001">
        <meta name="DC.Date" scheme="iso8601" content="2005-02-25">
        <meta name="DC.Subject" scheme="IBM_SubjectTaxonomy" content="ZZ999">
        <meta name="DC.Type" scheme="IBM_ContentClassTaxonomy" content="CT101">
        <meta name="DC.Rights" content="Copyright IBM Corporation 2009, 2014">
        <meta scheme="IBM_WTMCategory" name="IBM.WTMCategory" content="SOFDCOTHAR">
        <meta name="IBM.Effective" scheme="W3CDTF" content="2005-02-25">
        <meta name="DC.Publisher" content="IBM Corporation">
        <meta name="Last update" content="14032014spf">
        <!-- HEADER_SCRIPTS_AND_CSS_INCLUDE -->
        <link href="./css/www.css" rel="stylesheet" title="www" type="text/css">
        <!-- Masthead/footer -->
        <link href="./css/dw-mf.css" media="screen,projection" rel="stylesheet" title="www" type="text/css">
        <link href="./css/dw-mf-minimal-N.css" media="screen,projection" rel="stylesheet" title="www" type="text/css">
        <!-- Home CSS -->
        <link href="./css/dwwi-v17.css" media="screen,projection" rel="stylesheet" title="www" type="text/css">
        <script src="http://code.jquery.com/jquery-latest.js"></script>
<!--        <script src="./js/www.js"></script>
        <style type="text/css"></style>
        <script src="./js/eluminate.js"></script>
        <script src="./js/head.js"></script>
        <script src="./js/50200000.js"></script>
        <script src="./js/dw-www.js"></script>
        <script src="./js/Dialog.xd.js"></script>
        <script src="./js/prototype.js"></script>
        <script> ibmweb.config.sbs = false;</script>
        <script>
                    function removetempfunction() {
                    var whichindex = document.getElementById('SecurityQues').selectedIndex;
                            if (whichindex == 6) {
                    document.getElementById('customquestioncontainer').style.display = 'block';
                            document.getElementById('custom_question').value = '';
                    }
                    else {
                    document.getElementById('customquestioncontainer').style.display = 'none';
                    }
                    }
        </script>-->
        <title>developerWorks registration</title>
<!--        <script>
            function checkEmail(emailAddress) {
            var Teamvalue = document.getElementById(emailAddress).value;
                    var vpreLang = 'en_US';
                    var vlang = "&lang=" + vpreLang;
                    var sb = "email=" + Teamvalue + vlang;
                    var result = false;
                    if (Teamvalue != null && Teamvalue != '') {
            new Ajax.Request('/developerworks/dwwi/jsp/emailExists.jsp?',
            {parameters: sb,
                    evalScripts: false,
                    asynchronous: false,
                    encoding: 'UTF-8',
                    onSuccess: function (t) {
                    var json = eval("(" + t.responseText + ")");
                            result = true;
                            if (json.result == 'true') {
                    document.getElementById('userid_valid').style.display = 'none';
                            document.getElementById('userid_invalid').style.display = 'inline';
                            document.getElementById('userid_invalid').innerHTML = json.message;
                            result = true;
                    }
                    }, onFailure: function (t) {
            alert('onFail: ' + t.statusText);
            }
            });
            }
            return result;
            }
            function checkDisplayname(displayName) {
            var Teamvalue = document.getElementById(displayName).value;
                    var vpreLang = 'en_US';
                    var vlang = "&lang=" + vpreLang;
                    var sb = "displayname=" + Teamvalue + vlang;
                    var displayNamePat = "^([A-Za-z0-9@._-]+)$";
                    var matchArray = Teamvalue.match(displayNamePat);
                    var result = false;
                    if ((Teamvalue == null) || (Teamvalue != null && Teamvalue.length < 3) || (matchArray == null)) {
            document.getElementById('alias_valid').style.display = 'none';
                    document.getElementById('alias_invalid').style.display = 'inline';
                    document.getElementById('alias_invalid').innerHTML = 'This display name is not valid. Please choose another.';
                    result = true;
                    return result;
            }
            if (Teamvalue != null && Teamvalue != '') {
            new Ajax.Request('/developerworks/dwwi/jsp/displaynameExists.jsp?',
            {parameters: sb,
                    evalScripts: false,
                    asynchronous: false,
                    encoding: 'UTF-8',
                    onSuccess: function (t) {
                    var json = eval("(" + t.responseText + ")");
                            result = true;
                            if (json.result == 'true') {
                    document.getElementById('alias_valid').style.display = 'none';
                            document.getElementById('alias_invalid').style.display = 'inline';
                            document.getElementById('alias_invalid').innerHTML = 'This display name is taken. Please choose another.';
                            result = true;
                    }
                    }, onFailure: function (t) {
            alert('onFail: ' + t.statusText);
            }
            });
            }
            return result;
            }
            function validatePassword() {
            var passwd = document.forms['register'].Password.value;
                    var min_passwd_len = 8;
                    var max_passwd_len = 31;
                    if ((passwd != null) && (passwd.length < min_passwd_len)) {
            document.getElementById('password_valid').style.display = 'none';
                    document.getElementById('password_invalid').style.display = 'inline';
                    return "";
            } else if (passwd.length > max_passwd_len) {
            document.getElementById('password_valid').style.display = 'none';
                    document.getElementById('password_invalid').style.display = 'inline';
                    return "";
            }
            var passwdPat = "^([A-Za-z0-9@._-]+)$";
                    var matchArray = passwd.match(passwdPat);
                    if (matchArray == null) {
            document.getElementById('password_valid').style.display = 'none';
                    document.getElementById('password_invalid').style.display = 'inline';
            } else {
            document.getElementById('password_invalid').style.display = 'none';
                    document.getElementById('password_valid').style.display = 'inline';
            }
            }
            function validateRePassword() {
            var passwd = document.forms['register'].Password.value;
                    var re_passwd = document.forms['register'].RePassword.value;
                    var min_passwd_len = 8;
                    var max_passwd_len = 31;
                    if ((re_passwd != null) && (re_passwd.length < min_passwd_len)) {
            document.getElementById('repassword_valid').style.display = 'none';
                    document.getElementById('repassword_invalid').style.display = 'inline';
                    document.getElementById('repassword_mismatch').style.display = 'none';
                    return "";
            } else if (re_passwd.length > max_passwd_len) {
            document.getElementById('repassword_valid').style.display = 'none';
                    document.getElementById('repassword_invalid').style.display = 'inline';
                    document.getElementById('repassword_mismatch').style.display = 'none';
                    return "";
            }
            var passwdPat = "^([A-Za-z0-9@._-]+)$";
                    var matchArray = re_passwd.match(passwdPat);
                    if (matchArray == null) {
            document.getElementById('repassword_valid').style.display = 'none';
                    document.getElementById('repassword_invalid').style.display = 'inline';
                    document.getElementById('repassword_mismatch').style.display = 'none';
                    return "";
            } else if (re_passwd != passwd) {
            document.getElementById('repassword_invalid').style.display = 'none';
                    document.getElementById('repassword_valid').style.display = 'none';
                    document.getElementById('repassword_mismatch').style.display = 'inline';
            } else {
            document.getElementById('repassword_invalid').style.display = 'none';
                    document.getElementById('repassword_mismatch').style.display = 'none';
                    document.getElementById('repassword_valid').style.display = 'inline';
            }
            }
            function assignSubmit() {
            document.getElementById('action').value = 'registerandtake';
                    var isValid = "true";
                    return isValid;
            }
            function isValidDisplay() {
            var alias = document.forms['register'].alias.value;
                    var isValid = "true";
                    if ((alias.indexOf("<") != - 1) || (alias.indexOf(">") != - 1) || (alias.indexOf(";") != - 1) ||
                            (alias.indexOf(",") != - 1) || (alias.indexOf("\"") != - 1) || (alias.indexOf("'") != - 1)) {
            isValid = "false";
            }
            return isValid;
            }
            function validateDisplayName() {
            var alias = document.forms['register'].alias.value;
                    var min_passwd_len = 3;
                    var max_passwd_len = 31;
                    var isValid = isValidDisplay();
                    if ((alias != null) && (alias.length < min_passwd_len)) {
            document.getElementById('alias_valid').style.display = 'none';
                    document.getElementById('alias_invalid').style.display = 'inline';
            } else if (alias.length > max_passwd_len) {
            document.getElementById('alias_valid').style.display = 'none';
                    document.getElementById('alias_invalid').style.display = 'inline';
            } else if (isValid == "false") {
            document.getElementById('alias_valid').style.display = 'none';
                    document.getElementById('alias_invalid').style.display = 'inline';
            } else {
            document.getElementById('alias_invalid').style.display = 'none';
                    document.getElementById('alias_valid').style.display = 'inline';
            }
            }
            function validateUserID() {
            var emailStr = document.forms['register'].emailAddress.value;
                    document.getElementById('userid_invalid').innerHTML = 'This is not a valid email address.';
                    var min_passwd_len = 3;
                    var max_passwd_len = 80;
                    if ((emailStr != null) && (emailStr.length < min_passwd_len)) {
            document.getElementById('userid_valid').style.display = 'none';
                    document.getElementById('userid_invalid').style.display = 'inline';
                    return "";
            } else if (emailStr.length > max_passwd_len) {
            document.getElementById('userid_valid').style.display = 'none';
                    document.getElementById('userid_invalid').style.display = 'inline';
                    return "";
            }
            emailStr = emailStr.replace("[", "");
                    emailStr = emailStr.replace("]", "");
                    var emailPat = "^([A-Za-z0-9!#$%&'+-./=?^_`{|}~]+)@([A-Za-z0-9!#$%&'+-./=?^_`{|}~]+)[.]([A-Za-z0-9!#$%&'+-/=?^_`{|}~]{2,4})$";
                    var specialChars = "\\(\\)<>@,;:\\\\\\\"\\.\\[\\]";
                    var validChars = "\[^\\s" + specialChars + "\]";
                    var quotedUser = "(\"[^\"]*\")";
                    var atom = validChars + '+';
                    var word = "(" + atom + "|" + quotedUser + ")";
                    var userPat = new RegExp("^" + word + "(\\." + word + ")*$");
                    var domainPat = new RegExp("^" + atom + "(\\." + atom + ")*$");
                    var matchArray = emailStr.match(emailPat);
                    if (matchArray == null) {
            document.getElementById('userid_valid').style.display = 'none';
                    document.getElementById('userid_invalid').style.display = 'inline';
                    return "";
            } else {
            var user = matchArray[1];
                    var domain = matchArray[2];
                    if (user.match(userPat) == null) {
            document.getElementById('userid_valid').style.display = 'none';
                    document.getElementById('userid_invalid').style.display = 'inline';
                    return "";
            } else {
            var domainArray = domain.match(domainPat);
                    if (domainArray == null) {
            document.getElementById('userid_valid').style.display = 'none';
                    document.getElementById('userid_invalid').style.display = 'inline';
                    return "";
            } else {
            document.getElementById('userid_valid').style.display = 'inline';
                    document.getElementById('userid_invalid').style.display = 'none';
                    return "";
            }
            }
            }
            }
        </script>
        <script src="./js/usen-utf8.js" id="dojoIoScript2"></script>
        <script src="./developerWorks registration_files/saved_resource" id="dojoIoScript3"></script>
        <script src="./js/profiling.js" id="dojoIoScript4"></script>
        <script src="./js/mmcore.js"></script>
        <script src="./js/move.xd.js"></script>
        <script src="./js/TimedMoveable.xd.js"></script>
        <script src="./js/_CssStateMixin.xd.js"></script>
        <script src="./js/_FormMixin.xd.js"></script>
        <script src="./js/_DialogMixin.xd.js"></script>
        <script src="./js/DialogUnderlay.xd.js"></script>
        <script src="./js/ContentPane.xd.js"></script>
        <script src="./js/common.xd.js"></script>
        <script src="./js/TooltipDialog.xd.js"></script>
        <script src="./js/cookie-id.js"></script>
        <script src="./js/rules_50200000.js"></script>
        <script src="./js/dispatcher-v3.js"></script>
        <script src="./json/blackwhite_lists.json" id="dojoIoScript5"></script>
        <script src="./developerWorks registration_files/saved_resource(1)" id="mmcore.1" ></script>
        <script src="./js/Mover.xd.js"></script>
        <script src="./js/Moveable.xd.js"></script>
        <script src="./js/_ContentPaneResizeMixin.xd.js"></script>
        <script src="./js/html.xd.js"></script>
        <script src="./js/loading.xd.js"></script>
        <script src="./js/yahoo-min.js"></script>
        <script src="./js/cp-v3.js"></script>
        <script src="./js/common.xd(1).js"></script>
        <script src="./js/autoscroll.xd.js"></script>
        <script src="./js/_LayoutWidget.xd.js"></script>
        <script src="./js/json-min.js"></script>-->
        <script>
            $(document).ready(function(){
                $("#FName").keydown(function(){
                    var queryString = $(this).prop("value");
                    var url = "http://localhost:8080/CSE336-war/faces/verificationServlet?first=" + queryString;
                    $("#fName_invalid").load(url);
                });
                
                $("#LName").keydown(function(){
                    var queryString = $(this).prop("value");
                    var url = "http://localhost:8080/CSE336-war/faces/verificationServlet?last=" + queryString;
                    $("#lName_invalid").load(url);
                });
                
                $("#emailAddress").keydown(function(){
                    var queryString = $(this).prop("value");
                    var url = "http://localhost:8080/CSE336-war/faces/verificationServlet?email=" + queryString;
                    $("#userid_invalid").load(url);
                });
                
                $("#Password").keydown(function(){
                    var queryString = $(this).prop("value");
                    var url = "http://localhost:8080/CSE336-war/faces/verificationServlet?password=" + queryString;
                    $("#password_invalid").load(url);
                });
                
                $("#RePassword").keydown(function(){
                    var queryString = $(this).prop("value");
                    var url = "http://localhost:8080/CSE336-war/faces/verificationServlet?repassword=" + queryString;
                    $("#repassword_mismatch").load(url);
                });
                
                $("#alias").keydown(function(){
                    var queryString = $(this).prop("value");
                    var url = "http://localhost:8080/CSE336-war/faces/verificationServlet?alias=" + queryString;
                    $("#alias_invalid").load(url);
                });
                
                $("#CountryOfRes").click(function(event) {
                    var queryString = $(this).val();
                    if(queryString == "Select One"){
                        queryString="select";
                    }
                    var url = "http://localhost:8080/CSE336-war/faces/verificationServlet?CountryOfRes=" + queryString;
                    $("#CountryOfRes_invalid").load(url);
                });
                
                $("#City").keydown(function(){
                    var queryString = $(this).prop("value");
                    var url = "http://localhost:8080/CSE336-war/faces/verificationServlet?City=" + queryString;
                    $("#City_invalid").load(url);
                });
                
                $("#Language").keydown(function(){
                    var queryString = $(this).prop("value");
                    var url = "http://localhost:8080/CSE336-war/faces/verificationServlet?Language=" + queryString;
                    $("#Language_invalid").load(url);
                });
                
                $("#SecurityQues").change(function(){
                    var queryString = $(this).prop("value");
                    var url = "http://localhost:8080/CSE336-war/faces/verificationServlet?SecurityQues=" + queryString;
                    $("#SecurityQues_invalid").load(url);
                });
                
                $("#SecurityAns").keydown(function(){
                    var queryString = $(this).prop("value");
                    var url = "http://localhost:8080/CSE336-war/faces/verificationServlet?SecurityAns=" + queryString;
                    $("#SecurityAns_invalid").load(url);
                });
            });
        </script>
    </head>
    <body id="ibm-com" class="v17" aria-busy="false">
        <div id="ibm-top" class="ibm-landing-page ibm-no-scroll"><img src="./img/ibm_logo_print.png" width="43" height="15" id="ibm-print-masthead" alt="IBM Print"> 
            <!-- MASTHEAD_BEGIN -->
            <div id="ibm-masthead" role="banner">
                <div id="dw-masthead-top-row">
                    <ul id="ibm-mast-options-dw" role="toolbar">
                        <li role="presentation" id="dw-mast-top-4"> <a href="http://www.ibm.com/developerworks/"><img src="./img/dwn-dw-badge.png" width="43" height="22" alt="dW" aria-label="dW"></a> </li>
                        <li role="presentation" id="dw-mast-top-3"> <a href="http://www.ibm.com/">IBM</a> </li>
                    </ul>
                </div>
                <div id="ibm-universal-nav-dw" aria-label="Site map">
                    <ul id="ibm-unav-links-dw">
                        <li id="ibm-unav-home-dwlogo"> <a href="http://www.ibm.com/developerworks/"><img src="./img/dwn-dw-wordmark.png" width="225" height="28" alt="developerWorks®"></a> </li>
                    </ul>
                </div>
            </div>
            <div id="fdiv" class="ibm-access"></div>
            <!-- MASTHEAD_END -->
            <div id="ibm-access-cntr" role="main">
                <div id="ibm-leadspace-head" class="ibm-alternate ibm-alternate-5col">
                    <div id="ibm-leadspace-body">
                        <h1 class="ibm-small">developerWorks registration</h1>
                    </div>
                </div>
                <div id="ibm-pcon">
                    <div id="ibm-content">
                        <div id="ibm-content-body">
                            <div id="ibm-content-main"> 
                                <!-- Begin 6-4 6-2 grid -->
                                <div class="ibm-columns"> 
                                    <!-- Begin 6-4 grid -->
                                    <div class="ibm-col-6-4">
                                        <h3 class="error" style="color: red;">${errorMessage}</h2>
                                        <p>Thank you for registering with IBM developerWorks. To  simplify things, you can use the IBM ID and password that you designate below across IBM.</p>
                                        <p>Asterisks (<span class="ibm-required">*</span>) indicate fields required to complete this transaction.</p>
                                        <form method="post" action="submitServlet" class="ibm-row-form" name="register" id="registerform">
                                            <h2 class="ibm-inner-subhead">Basic registration information</h2>
                                            <div class="ibm-columns">
                                                <div class="ibm-col-2-1">
                                                    <p>
                                                        <label for="FName">First name:<span class="ibm-required">*</span></label>
                                                        <span>
                                                            <input name="FName" id="FName" size="36" type="text" value=${formData.firstName}>
                                                        </span> 
                                                        <span class="dw-lc-formerror" id="fName_invalid"></span>
                                                    </p>
                                                </div>
                                                <div class="ibm-col-2-1">
                                                    <p>
                                                        <label for="LName">Last name:<span class="ibm-required">*</span></label>
                                                        <span>
                                                            <input name="LName" id="LName" size="36" type="text" value=${formData.lastName}>
                                                        </span> 
                                                        <span class="dw-lc-formerror" id="lName_invalid"></span>
                                                    </p>
                                                </div>
                                            </div>
                                            <p>
                                                <label for="emailAddress">Email address:<span class="ibm-required">*</span><br>
                                                    <span class="ibm-additional-info dw-lc-labeloverride dw-lc-important-adjust ibm-item-note">(This will also be your IBM ID for signing in)</span></label>
                                                <span>
                                                    <input name="UserID" id="emailAddress" size="42" type="text" value=${formData.email}>
                                                </span> <span class="dw-lc-formerror" id="userid_invalid"></span> </p>
                                            <p>
                                                <label for="Password">Password:<span class="ibm-required">*</span><br>
                                                    <span class="ibm-additional-info dw-lc-labeloverride dw-lc-important-adjust ibm-item-note">(Must be at least 8 characters)</span></label>
                                                <span>
                                                    <input name="Password" id="Password" size="42" type="password" value=${formData.password} >
                                                </span> <span class="dw-lc-formerror" id="password_invalid"></span>
                                            </p>
                                            <p>
                                                <label for="RePassword">Verify password:<span class="ibm-required">*</span></label>
                                                <span>
                                                    <input name="RePassword" id="RePassword" size="42" type="password" value="${formData.rePassword}">
                                                </span> <span class="dw-lc-formerror" id="repassword_mismatch"></span>
                                            </p>
                                            <p>
                                                <label for="alias">Display name:<span class="ibm-required">*</span><br>
                                                    <span class="ibm-additional-info dw-lc-labeloverride dw-lc-important-adjust ibm-item-note">(Must be between 3 - 31 characters. <a class="ibm-feature-link" href="https://www.ibm.com/developerworks/dwwi/jsp/Register.jsp?lang=en_US&appname=developerworks&d=http%3A%2F%2Fwww.ibm.com%2Fdeveloperworks%2Ftopics%2F#overlay2" onclick="ibmweb.overlay.show( & #39; overlay2 & #39; , this); return false;">Tips for choosing display name.</a>) </span> </label>
                                                <span>
                                                    <input name="alias" id="alias" size="42" type="text" value=${formData.displayName}>
                                                </span> <span class="dw-lc-formerror" id="alias_invalid"></span>
                                            </p>
                                            <!-- SUPPLEMENTAL OVERLAYS START HERE -->
                                            <div class="ibm-common-overlay" id="overlay2">
                                                <div class="ibm-head">
                                                    <p> <a class="ibm-common-overlay-close" href="https://www.ibm.com/developerworks/dwwi/jsp/Register.jsp?lang=en_US&appname=developerworks&d=http%3A%2F%2Fwww.ibm.com%2Fdeveloperworks%2Ftopics%2F#close">Close [x]</a> </p>
                                                </div>
                                                <div class="ibm-body">
                                                    <div class="ibm-main"> <a class="ibm-access" id="overlaylink2"><!-- Accessibility anchor --></a>
                                                        <div class="ibm-title">
                                                            <h1>Choose your display name carefully...</h1>
                                                        </div>
                                                        <div class="ibm-container ibm-alternate">
                                                            <div class="ibm-container-body">
                                                                <p>Your display name accompanies the content that you post on developerWorks. Other users will recognize and associate your display name with you. Your display name:</p>
                                                                <p> </p>
                                                                <ul>
                                                                    <li>Easily and publicly identifies you. Samples: brenny, JeffJ, lindameyer, and Michael_OConnell</li>
                                                                    <li>Should not be your email address (for privacy reasons)</li>
                                                                    <li>You can change your display name in your profile</li>
                                                                </ul>
                                                                <p></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="ibm-footer"></div>
                                            </div>
                                            <!-- SUPPLEMENTAL OVERLAYS END HERE -->
                                            <p>
                                                <label for="CountryOfRes">Country/region of residence:<span class="ibm-required">*</span><br>
                                                    <span class="ibm-additional-info dw-lc-labeloverride dw-lc-important-adjust ibm-item-note">(Required for warranty)</span></label>
                                                <span>
                                                    <select name="CountryOfRes" id="CountryOfRes">
                                                        <option value="Select One" ${formData.country == 'Select One' ? 'selected="selected"' : ''}>Select One</option>
                                                        <option value="AQ" ${formData.country == 'AQ' ? 'selected="selected"' : ''}>Antarctica</option>
                                                        <option value="KY" ${formData.country == 'KY' ? 'selected="selected"' : ''}>Cayman Islands</option>
                                                        <option value="CX" ${formData.country == 'CX' ? 'selected="selected"' : ''}>Christmas Island</option>
                                                        <option value="GB" ${formData.country == 'GB' ? 'selected="selected"' : ''}>United Kingdom</option>
                                                        <option value="US" ${formData.country == 'US' ? 'selected="selected"' : ''}>United States</option>
                                                    </select>
                                                </span> 
                                                <span class="dw-lc-formerror" id="CountryOfRes_invalid"></span>
                                            </p>
                                            <div class="ibm-columns">
                                                <div class="ibm-col-2-1">
                                                    <p>
                                                        <label for="City">City:</label>
                                                        <span>
                                                            <input name="City" id="City" size="36" type="text" value=${formData.city}>
                                                        </span> 
                                                    <span class="dw-lc-formerror" id="City_invalid"></span>
                                                    </p>
                                                </div>
                                                <div class="ibm-col-2-1">
                                                    <p>
                                                        <label for="Language">Language:<span class="ibm-required">*</span></label>
                                                        <span>
                                                            <select name="Language" id="Language">
                                                                <option value="en-US" ${formData.language == 'en-US' ? 'selected="selected"' : ''}>English</option>
                                                                <option value="en-AU" ${formData.language == 'en-AU' ? 'selected="selected"' : ''}>English, Australian</option>
                                                                <option value="en-GB" ${formData.language == 'en-GB' ? 'selected="selected"' : ''}>English, UK</option>
                                                                <option value="eo-FR" ${formData.language == 'eo-FR' ? 'selected="selected"' : ''}>Esperanto</option>
                                                                <option value="et-EE" ${formData.language == 'et-EE' ? 'selected="selected"' : ''}>Estonian</option>
                                                            </select>
                                                        </span> 
                                                    <span class="dw-lc-formerror" id="Language_invalid"></span>
                                                    </p>
                                                </div>
                                            </div>
                                            <p>Please select a security question that only you can answer or create your own. Then enter the answer to the question. Occasionally, you may be asked to answer this question to confirm your identity.</p>
                                            <div class="ibm-columns">
                                                <div class="ibm-col-2-1">
                                                    <p>
                                                        <label for="SecurityQues">Security question:<span class="ibm-required">*</span></label>
                                                        <span>
                                                            <select name="SecurityQues" id="SecurityQues" onchange="removetempfunction()">
                                                                <option value="name" ${formData.securityQuestion == 'name' ? 'selected="selected"' : ''}>What is your mother's maiden name?</option>
                                                                <option value="pet" ${formData.securityQuestion == 'pet' ? 'selected="selected"' : ''}>What is the name of your first pet?</option>
                                                                <option value="school" ${formData.securityQuestion == 'school' ? 'selected="selected"' : ''}>What was the name of your first school?</option>
                                                                <option value="job" ${formData.securityQuestion == 'job' ? 'selected="selected"' : ''}>In what city or town was your first job?</option>
                                                                <option value="country" ${formData.securityQuestion == 'country' ? 'selected="selected"' : ''}>In what country were you born?</option>
                                                            </select>
                                                        </span> 
                                                    <span class="dw-lc-formerror" id="SecurityQues_invalid"></span>
                                                    </p>
                                                </div>
                                            </div>
                                            <p>
                                                <label for="SecurityAns">Answer to security question:<span class="ibm-required">*</span></label>
                                                <span>
                                                    <input name="SecurityAns" id="SecurityAns" size="42" type="text" value=${formData.securityAnswer}>
                                                </span> 
                                            <span class="dw-lc-formerror" id="SecurityAns_invalid"></span>
                                            </p>
                                            <div class="dw-lc-spacevertical">&nbsp;</div>
                                            <h2 class="ibm-alternate-rule">Privacy preferences</h2>
                                            <div id="privacyid">
                                                <p>Please keep me informed of products, services and offerings from IBM companies worldwide.</p>
                                                <p> <span class="ibm-input-group">
                                                        <input id="NC_CHECK_EMAIL" value="0" name="NC_CHECK_EMAIL" type="checkbox" ${formData.byEmail == true ? 'checked' : ''}>
                                                        <label for="NC_CHECK_EMAIL">by email.</label>
                                                    </span><br>
                                                    <input id="NC_HIDDEN_EMAIL" value="OPT_IN" name="NC_HIDDEN_EMAIL" type="hidden">
                                                    <span class="ibm-input-group">
                                                        <input id="NC_CHECK_OTHER" value="4" name="NC_CHECK_OTHER" type="checkbox" ${formData.byTelephoneOrPostalMail == true ? 'checked' : ''}>
                                                        <label for="NC_CHECK_OTHER">by telephone or postal mail.</label>
                                                    </span><br>
                                                    <input id="NC_HIDDEN_OTHER" value="OPT_IN" name="NC_HIDDEN_OTHER" type="hidden">
                                                </p>
                                                <p>I accept&nbsp; <a href="http://www.ibm.com/privacy/us/en/" target="_blank">IBM's Privacy statement</a>.</p>
                                                <p>All fields are required to complete this transaction.</p>
                                            </div>
                                            <div class="ibm-alternate-rule">
                                                <hr>
                                            </div>
                                            <p>By selecting the <strong>Register</strong> link, I agree to the developerWorks&nbsp;<a class="ibm-feature-link" href="https://www.ibm.com/developerworks/mydeveloperworks/terms?lang=en">terms of use</a>.</p>
                                            <div class="ibm-buttons-row">
                                                <p>
                                                    <input id="ibm-submit" name="ibm-submit" class="ibm-btn-arrow-pri" value="Register" type="submit">
                                                    <span class="ibm-sep"></span>
                                                    <input value="Cancel" type="button" name="ibm-cancel" class="ibm-btn-cancel-sec" onclick="window.location(window.location.href = & #39; http://www.ibm.com/developerworks/topics/&#39;)">
                                                </p>
                                            </div>
                                            <div class="dw-lc-spacevertical">&nbsp;</div>
                                            <div class="dw-lc-spacevertical">&nbsp;</div>
                                        </form>
                                    </div>
                                    <!-- End 6-4 grid --> 
                                </div>
                            </div>
                        </div>
                        <div id="ibm-content-sidebar">
                            <div id="ibm-contact-module"> 
                                <!--IBM contact module--> 
                            </div>
                            <div id="ibm-merchandising-module"> 
                                <!--IBM Web Merchandising Module--> 
                            </div>
                            <div class="ibm-container">
                                <h2>Why register?</h2>
                                <div class="ibm-container-body"> <img src="./img/hiviz-mydw-new.jpg" width="168" height="64" alt="Register for mydeveloperWorks">
                                    <p>developerWorks is a worldwide community of software developers and IT professionals, from students to seasoned veterans.</p>
                                    <ul class="ibm-bullet-list ibm-no-links">
                                        <li>Find expert answers in forums</li>
                                        <li>Create your own blog, wiki, or group</li>
                                        <li>Contribute to discussions</li>
                                        <li>Follow user activity in real-time</li>
                                        <li>Interact with other users</li>
                                        <li>Expand your professional network</li>
                                    </ul>
                                    <div class="ibm-rule">
                                        <hr>
                                    </div>
                                    <p class="ibm-ind-link"><a href="https://www.ibm.com/developerworks/mydeveloperworks?lang=en" class="ibm-forward-link">Read more</a></p>
                                </div>
                            </div>
                        </div>
                        <!-- OVERLAY STARTS HERE --> 
                        <!-- OVERLAY ENDS HERE --> 
                    </div>
                </div>
            </div>
        </div>
        <div id="ibm-metrics"> 
            <script src="./js/stats.js"></script> 
            <a id="icon-id014037539530545473"><img style="border: none; cursor:pointer;" onerror="truste.eu.showSeal()" alt="TRUSTe Icon" src="./developerWorks registration_files/get"></a></div>
        <script src="./developerWorks registration_files/notice"></script><script defer="defer" async="async" src="./developerWorks registration_files/notice(1)"></script>
    </body>
</html>
