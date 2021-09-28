<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Security-Policy" content="default-src 'self'">
    <meta http-equiv="Cache-Control" content="no-cache, no-store" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cornell University Web Login</title>

    <link href="/idp/fonts/font-awesome.min.css" rel="stylesheet">
    <link href="/idp/fonts/material-design-iconic-font.min.css" rel="stylesheet">
    <link href="/idp/fonts/freight/freight_basic.css" rel="stylesheet">
    <link href="/idp/css/cornell_basic.css" rel="stylesheet">

</head>

<body class="brand-reverse">

    <header class="band" id="site-header">
        <div class="container">
            <div class="content compact">
                <h1 class="cu-logo"><a href="https://www.cornell.edu"><img
                            src="/idp/images/cornell_basic/bold_cornell_seal_simple_white.svg" alt="Cornell University"
                            width="100" height="100"></a></h1>
                <div class="cu-unit">
                    <h2>CUWebLogin</h2>
                    <h3>Cornell University</h3>
                </div>
            </div>
        </div>
    </header>

    <div class="band" id="main-content">
        <main id="main" class="container aria-target" tabindex="-1">

            <article class="content" id="main-article">
                <h1>Log in to continue</h1>
                <div class="flex-grid">
                    <div class="flex-7">

                        <form name="login" id="login" action="External"
                            method="post">
                            <input type="hidden" name="conversation" value='<%= request.getParameter("conversation") %>'>
                            <fieldset class="semantic">
                                <legend class="sr-only">Login Form</legend>

                                <label for="userName">Username <small>(NetID or GuestID)</small> <em
                                        class="label-required"><span>(required)</span></em></label>
                                <input id="userName" name="userName" type="text" required="" autocapitalize="off"
                                    autocomplete="username" aria-required="true">

                                <div class="form-footer">
                                    <div>
                                        <input type="submit" name="continue" value="Login">
                                    </div>
                                    <div>
                                        <div class="description input-note"><a
                                                href="https://it.cornell.edu/cuweblogin-guestids-netids-shibboleth/types-id">Don't
                                                have a username?</a></div>
                                    </div>
                                </div>
                                <p class="description">To <a target="_blank"
                                        href="https://it.cornell.edu/cuweblogin/protect-your-identity#section-3">logout</a>,
                                    you must Exit or Quit your browser.</p>
                            </fieldset>
                        </form>
                    </div>
                    <div class="flex-5">
                        <h2 class="h3 heading-security">Always Verify</h2>
                        <p>University services that use CUWebLogin will always direct you to a
                            <strong>cornell.edu</strong> address:</p>
                        <ul class="custom no-bullet cornell-urls">
                            <li>https://shibidp.cit.<mark>cornell.edu/</mark>...</li>
                        </ul>

                        <hr>
                        <h2 class="h3">Support</h2>
                        <ul class="custom no-bullet">
                            <li>
                                <span class="fa fa-life-ring"></span><a class="tooltip"
                                    href="https://it.cornell.edu/support">Having trouble logging in?</a>
                                <tip class="cwd-tooltip tooltip-dark tooltip-top">Get help or troubleshoot common issues
                                </tip>
                            </li>
                            <li>
                                <span class="zmdi zmdi-smartphone-setup"></span><a class="tooltip"
                                    href="https://twostep.netid.cornell.edu" target=_blank">Manage Your Two-Step
                                    Login</a>
                                <tip class="cwd-tooltip tooltip-dark tooltip-top">Add or update devices including
                                    hardware tokens</tip>
                            </li>
                        </ul>
                    </div>
                </div>

                <h2 class="h3">Legal Notice</h2>
                <p>This service and the services to which it provides access are for authorized use only. Any attempt to
                    gain unauthorized access, or exceed authorized access, to online University resources will be
                    pursued, as applicable, under campus codes and state or federal law. <button
                        class="tooltip tooltip-info">
                        <div class="sr-only">More Information About </div>System Use Notification
                    </button>
                    <tip class="cwd-tooltip tooltip-dark tooltip-top">This service and the services to which it provides
                        access are for authorized use only. Any attempt to gain unauthorized access, or exceed
                        authorized access, to online University resources will be pursued, as applicable, under campus
                        codes and state or federal law. System use notification messages can be implemented in the form
                        of warning banners displayed when individuals log in to the information system. System use
                        notification is intended only for information system access that includes an interactive login
                        interface with a human user and is not intended to require notification when an interactive
                        interface does not exist.</tip>
                </p>

            </article>

        </main>
    </div>

    <footer class="band dark" id="site-footer">
        <div class="sub-footer band">
            <div class="container">
                <div class="content compact">
                    <div class="wa-msg">
                        <p>If you have a disability and are having trouble accessing information on this website or need
                            materials in an alternate format, contact <a
                                href="mailto:web-accessibility@cornell.edu">web-accessibility@cornell.edu</a> for
                            assistance.</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script src="/idp/js/focus.js"></script>
    <script src="/idp/js/contrib/jquery-3.6.0.min.js"></script>
    <script src="/idp/js/cwd_tooltips.js"></script>
</body>

</html>



<!-- <!DOCTYPE html>
<html>
    <form method="POST" action="External">
        <input type="hidden" name="conversation" value='<%= request.getParameter("conversation") %>'>

        <h1>IDP SELECTION:</h1>
        <%
        Cookie cookie = null;
        Cookie[] cookies = null;

        // Get an array of Cookies associated with the this domain
        cookies = request.getCookies();
        request.setAttribute("userNameCookie", "");

        if (cookies != null) {
           for (int i = 0; i < cookies.length; i++) {
              cookie = cookies[i];
              if (cookie.getName().equals("cu_username")) request.setAttribute("userNameCookie", cookie.getValue());
           }
        }
        %>
        UserName : <input type="text" id="userName" name="userName" value='<%= request.getAttribute("userNameCookie") %>'/>
        <br/>
        <br/>

        <button type="submit" name="continue">Continue</button>
    </form>

</html> -->
