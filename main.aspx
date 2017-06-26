<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="LoginApplication.main" %>
<!doctype html>
<!--[if lt IE 7]> <html class="ie6 oldie"> <![endif]-->
<!--[if IE 7]>    <html class="ie7 oldie"> <![endif]-->
<!--[if IE 8]>    <html class="ie8 oldie"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="">
<!--<![endif]-->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-title" content="PIASC">
    <title>Printing Industries Association of So Cal.</title>
    <link href="css/boilerplate.css" rel="stylesheet" type="text/css">
    <link href="css/css-reset.min.css" rel="stylesheet" type="text/css">
    <!--<link href="css/employeePages.css" rel="stylesheet" type="text/css">-->
    <link href="css/emp.css" rel="stylesheet" type="text/css">-->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/royalslider.css" rel="stylesheet" type="text/css">
    <link href="css/FWslider.css" rel="stylesheet" type="text/css">
    <link href="css/rsMin.css" rel="stylesheet" type="text/css">


    <link rel="shortcut icon" sizes="16x16" href="images/homescreenIcons/icon-16x16.png">
    <link rel="shortcut icon" sizes="96x96" href="images/homescreenIcons/icon-96.png">
    <link rel="shortcut icon" sizes="512x512" href="images/homescreenIcons/artwork-512.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/homescreenIcons/icon-144x144.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/homescreenIcons/icon-114x114.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/homescreenIcons/icon-72x72.png">
    <link rel="apple-touch-icon-precomposed" sizes="196x196" href="images/homescreenIcons/icon-196x196.png">
    <link rel="apple-touch-icon-precomposed" href="images/homescreenIcons/apple-touch-icon-precomposed.png">
    <link rel="icon" href="images/homescreenIcons/action-icon-android.png">
    <link rel="icon" href="images/homescreenIcons/action-icon-ios6.png">
    <link rel="icon" href="images/homescreenIcons/action-icon-ios7.png">

    <link rel="icon" href="favicon.ico">

    <link rel="stylesheet" type="text/css" href="css/addtohomescreen.css">
    <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <script>
        (function (d) {
            var config = {
                kitId: 'aem6egb',
                scriptTimeout: 3000
            },
            h = d.documentElement, t = setTimeout(function () { h.className = h.className.replace(/\bwf-loading\b/g, "") + " wf-inactive"; }, config.scriptTimeout), tk = d.createElement("script"), f = false, s = d.getElementsByTagName("script")[0], a; h.className += " wf-loading"; tk.src = '//use.typekit.net/' + config.kitId + '.js'; tk.async = true; tk.onload = tk.onreadystatechange = function () { a = this.readyState; if (f || a && a != "complete" && a != "loaded") return; f = true; clearTimeout(t); try { Typekit.load(config) } catch (e) { } }; s.parentNode.insertBefore(tk, s)
        })(document);
    </script>
    <script src="js/respond.min.js"></script>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-30869954-1', 'auto');
        ga('send', 'pageview');

    </script>

    <script src="js/addtohomescreen.js"></script>
    <script>
        addToHomescreen();
    </script>
</head>
<body>
    <div id="red"></div>

    <header id="black">
        <div class="gridContainer clearfix">
            <nav class="fluid ">
                <ul class="fluid fluidList topNav ">
                    <li class="fluid homeLinks "><a href="http://www.piasc.org">PIASC HOME</a></li>
                    <li class="fluid homeLinks"><a href="https://www.pibt.org/onlinedocuments.aspx" target="_blank"><span style="margin-left:-30px;">INSURANCE PORTAL</span></a></li>
                    <li class="fluid homeLinks"><a href="https://obc.itsme247.com/912/" target="_blank">ONLINE BANKING</a></li>

                </ul>
                <div id="nav-toggle"><span></span></div>
            </nav>
            <nav id="nav">
                <ul>
                    <li><a href="index.html">PIASC HOME</a></li>
                    <li><a href="https://www.pibt.org/onlinedocuments.aspx" target="_blank">INSURANCE PORTAL</a></li>
                    <li><a href="http://www.printcu.org/" target="_blank">CREDIT UNION</a></li>
                    <li><a href="workPerks.html">WORK PERKS</a></li>
                    <li><a href="http://www.paycomonline.com/" target="_blank">TIME SHEET</a></li>

                    <li><a href="https://webmail.piasc.org/owa/auth/logon.aspx?replaceCurrent=1&url=https%3a%2f%2fwebmail.piasc.org%2fowa%2f" target="_blank">WEBMAIL</a></li>
                    <li><a href="empPhotos.html">STAFF PHOTOS</a></li>
                    <li><a href="arasMessage.html">ARA's MESSAGE</a></li>
                    <li><a href="index.html#benefits">EMPLOYEE BENEFITS</a></li>
                    <li><a href="index.html#training">TRAINING</a></li>
                    <li><a href="index.html#files">DIGITAL FILE CABINET</a></li>
                </ul>
            </nav>

            <nav id="nav-mobile"></nav>

        </div> <!--close container-->
    </header>

    <header id="white">
        <div class="gridContainer clearfix">
            <div class="fluid ">
                <div class="fluid empLogo">
                    <img src="images/logos/EmployeeZoneLogo.png" alt="PIASC logo" />
                </div>

                <div class="fluid smIcons">
                    <a href="https://www.linkedin.com/groups?home=&amp;gid=1870279&amp;trk=anet_ug_hm" target="_blank"><span class="fa fa-linkedin"></span></a>
                    <a href="https://www.facebook.com/PIASCfb?v=wall" target="_blank"><span class="fa fa-facebook"></span></a>
                    <a href="https://twitter.com/piasc" target="_blank"><span class="fa fa-twitter"></span></a>
                    <a href="https://www.youtube.com/user/piasocal" target="_blank"><span class="fa fa-youtube"></span></a>
                    <a href="http://instagram.com/piasocal/" target="_blank"><span class="fa fa-instagram"></span></a>
                    <a href="contact.html"><span class="fa fa-envelope"></span></a>
                </div>

            </div>

        </div> <!--close container-->

    </header>


    <div class="gridContainer clearfix">


        <div id="div1" class="fluid">
            <div id="full-width-slider" class="royalSlider heroSlider rsMinW">

                <div class="rsContent royalSlider">
                    <a href="http://www.paycomonline.com/" target="_blank"><img src="banners/timesheet.png" alt="timesheet" /></a>
                </div><!--close rsContent-->

                <div class="rsContent royalSlider">
                    <img src="banners/WeeklyReport.png" alt="weekly report" />
                </div><!--close rsContent-->

                <div class="rsContent royalSlider">
                    <a href="pdf/PIASCHolidays.pdf" target="_blank"><img src="banners/holidayBanner.png" alt="holidays" /></a>
                </div><!--close rsContent-->

            </div><!--close full-width-slider-->
        </div><!--close div1-->

        <div id="memberD" class="fluid benefit">
            <a href="http://www.paycomonline.com/" target="_blank"><img src="images/icons/png/timesheet.png" class="icon" alt="time sheet"></a><br>
            <span class="iconTitle"><a href="http://www.paycomonline.com/" target="_blank">TIME SHEET</a></span><br>

        </div>
        <div id="insuranceP" class="fluid benefit">
            <a href="https://webmail.piasc.org/owa/auth/logon.aspx?replaceCurrent=1&url=https%3a%2f%2fwebmail.piasc.org%2fowa%2f" target="_blank"><img src="images/icons/png/webmail.png" class="icon" alt="webmail"></a><br>
            <span class="iconTitle"><a href="https://webmail.piasc.org/owa/auth/logon.aspx?replaceCurrent=1&url=https%3a%2f%2fwebmail.piasc.org%2fowa%2f" target="_blank">PIASC WEBMAIL</a></span><br>

        </div>
        <div id="cashM" class="fluid benefit">
            <a href="empPhotos.html"><img src="images/icons/png/empPhotos.png" class="icon" alt="photos"></a><br>
            <span class="iconTitle"><a href="empPhotos.html">STAFF PHOTOS</a></span><br>

        </div>

<%--        <div id="managementTools" class="fluid benefit">
            <a href="arasMessage.html"><img src="images/icons/png/message.png" class="icon" alt="Ara's Message"></a><br>
            <span class="iconTitle"><a href="arasMessage.html">ARA's MESSAGE</a></span><br>

        </div>--%>

    </div> <!--close container-->
    <main>

        <div id="shadow">&nbsp;</div>

        <div class="gridContainer clearfix">

            <div id="main" class="fluid ">

                <div id="employeeBenefits" class="fluid ">
                    <div class="fluid  sectionTitle"><strong><a id="benefits"></a>EMPLOYEE BENEFITS</strong></div>

                    <p>
                        <a href="pdf/VanguardSummaryPlanDescription.pdf" target="_blank">401k Summary Plan Description</a><br>
                        <a href="pdf/PIASCTaxDeferredCompensationPlan.pdf" target="_blank">401k Application</a><br>
                        <a href="pdf/401KLoan Policy-Procedures.pdf" target="_blank">401k Loan Policy/Procedures</a><br>
                        <a href="https://investor.vanguard.com/corporate-portal/" target="_blank">Vanguard Login Link</a><br>
                        <a href="pdf/PICUMembershipApplication.pdf" target="_blank">Credit Union Application</a><br>
                        <a href="pdf/2014ATTflyer.PDF" target="_blank">AT&T Discount</a><br>
                        <a href="workPerks.html">Great Work Perks</a>
                    </p>
                </div>

                <div id="trainingDVDs" class="fluid ">
                    <div class="fluid sectionTitle"><strong><a id="training"></a>TRAINING</strong></div>
                    <p>Training DVD's are available.<br>Titles include:</p>
                    <p>
                        <ul>
                            <li><strong>Take Charge of Your Career:</strong> Key Essentials for Excelling as an Admin!</li>
                            <li><strong>Project Management for Top Assistants:</strong> Tactics for Less Stress & More Success!</li>
                            <li><strong>Stellar Service Secrets for Admin:</strong> Keys to Providing Exceptional Phone Skills!</li>
                            <li><strong>Eliminate Admin Burnout:</strong> Keys to Boost Your Productivity and Value!</li>
                            <li><strong>Top Assistants:</strong> Team Up for Success by Partnering with Your Boss!</li>
                            <li><strong>Managing Emotional Intelligence:</strong> How Top Admins Advance Their Career</li>
                        </ul>
                    </p>
                    <p>Please contact <a href="mailto:maribel@piasc.org">Maribel Campos</a> at Ext. 210 to borrow these informative DVDs.</p>
                </div>
                <div id="spaceC" class="fluid benefit"><p>&nbsp;</p></div>

                <div id="publications" class="fluid">
                    <div id="div13" class="fluid sectionTitle"><strong><a id="files"></a>DIGITAL FILE CABINET</strong></div>
                    <div id="update" class="fluid">
                        <a href="pdf/2015PIASCemployeeHandbook.docx" target="_blank">
                            <img src="images/publications/handbook.jpg" alt="handbook"><br>
                            Employee Handbook
                        </a>
                    </div>
                    <div id="eflash" class="fluid">
                        <a href="pdf/PIASCHolidays.pdf" target="_blank">
                            <img src="images/publications/holidays.jpg" alt="holidays" /><br>
                            Scheduled Holidays
                        </a>
                    </div>
                    <div id="watchdog" class="fluid">
                        <a href="pdf/MakeupTimeRequest.pdf" target="_blank">
                            <img src="images/publications/makeupTime.jpg" alt="makeup time" /><br>
                            Makeup Time Request
                        </a>
                    </div>
                    <div id="piaMag" class="fluid">
                        <a href="pdf/AbsenceRequest.pdf" target="_blank">
                            <img src="images/publications/timeOff.jpg" alt="time off" /><br>
                            Request for Time Off
                        </a>
                    </div>
                    <div id="pressR" class="fluid">
                        <a href="pdf/ComputerErgo.pdf" target="_blank">
                            <img src="images/publications/easyErgo.jpg" alt="inspect records" /><br>
                            Easy Ergonomics
                        </a>
                    </div>


                    <div id="spaceC2" class="fluid benefit"><p>&nbsp;</p></div>

                    <div id="div11" class="fluid">
                        <div class="fluid  sectionTitle" id="photosTitle">
                            <strong>PAYROLL</strong>
                        </div>
                        <div id="photos" class="fluid ">
                            <p>
                                <a href="pdf/Direct_Deposit_Authorization.pdf" target="_blank">Direct Deposit Form</a><br>
                                <a href="http://www.irs.gov/pub/irs-pdf/fw4.pdf" target="_blank">W-4</a>
                            </p>
                            <strong>EXPENSE REPORTS</strong>
                            <p>
                                <a href="pdf/2015PIASCExpenseReport.pdf" target="_blank">PIASC</a><br>
                                <a href="pdf/2015RAISEExpenseReport.pdf" target="_blank">RAISE</a><br>
                                <a href="pdf/2015PICExpenseReport.pdf" target="_blank">PIC</a><br>
                                <a href="pdf/2015MuseumExpenseReport.pdf" target="_blank">Printing Museum</a>
                            </p>
                            <p>
                                <br>
                                General Payroll Questions? Email <a href="mailto:verlita@piasc.org">Verlita</a>.
                        </div>
                    </div>

                    <div id="div4" class="fluid">
                        <div id="elevatingTitle" class="fluid  sectionTitle">
                            <strong>REQUIRED HR PAMPHLETS FOR EMPLOYEES</strong>
                        </div>
                        <div id="printAccess" class="fluid ">
                            <p>
                                <a href="http://www.pic-gov.org/documents/HumanResources/RequiredBrochures/TimeOfHirePamphlet.pdf" target="_blank">Rights to Workers' Compensation Benefits</a><br>
                                <a href="http://www.pic-gov.org/documents/HumanResources/RequiredBrochures/StateDisabilityInsurance.pdf" target="_blank">State Disability Insurance</a><br>
                                <a href="http://www.pic-gov.org/documents/HumanResources/RequiredBrochures/PaidFamilyLeavePamphlet.pdf" target="_blank">Paid Family Leave Pamphlet</a><br>
                                <a href="http://www.pic-gov.org/documents/HumanResources/RequiredBrochures/UnemploymentInsurance.pdf" target="_blank">Unemployment Insurance Pamphlet</a><br>
                                <a href="http://www.pic-gov.org/documents/HumanResources/RequiredBrochures/SexualHarassmentBrochureEnglish.pdf" target="_blank">Sexual Harrassment Brochure</a>
                            </p><br>
                            <p>Any questions regarding HR, contact your direct Supervisor, <a href="mailto:ara@piasc.org">Ara Izquierdo</a> or <a href="mailto:bob@piasc.org">Bob Lindgren</a>.</p>
                        </div>
                    </div>

                    <div id="spaceB" class="fluid benefit"><p>&nbsp;</p></div>



                </div>

            </div><!--close main-->

        </div> <!--close container-->
    </main>

    <footer id="fullFooter" class="fluid ">
        <div class="gridContainer clearfix">

            <div id="redFooter" class="fluid">
                <div id="footlinks" class="fluid">
                    <div id="leftLinks" class="fluid">

                        <a href="pdf/PIASCEmployeeDirectory.xlsx">Full Employee Directory</a><br>
                        <a href="pdf/USERGUIDE-PolycomPhoneSystem.pdf" target="_blank">Telephone Usage Guide</a>
                    </div>
                    <div id="rightLinks" class="fluid">
                        <strong style="color:rgba(112,107,107,1.00);">Evacuation Plans by Department</strong><br>
                        <a href="pdf/EvacuationPlan4thFloor2010.pdf" target="_blank">Management Services</a><br>
                        <a href="pdf/EvacuationPlan4thFloor2010.pdf" target="_blank">PIBT</a><br>
                        <a href="pdf/EvacuationPlan4thFloor2010.pdf" target="_blank">Insurance Services</a>
                    </div>
                </div>

            </div><!--close redFooter-->


        </div> <!--close container-->

    </footer>
    <div id="subFooter" class="fluid">&copy; 2015 Printing Industries Association, Inc. of Southern California. All rights reserved.</div>

    <!--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>-->
    <script src="js/vendor/jquery-1.11.1.min.js"></script>
    <script src="js/jquery.royalslider.min.js"></script>
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>
    <script id="addJS">
        jQuery(document).ready(function ($) {
            $('#full-width-slider').royalSlider({
                arrowsNav: true,
                loop: true,
                keyboardNavEnabled: true,
                controlsInside: false,
                autoHeight: false,
                autoScaleSlider: true,
                imageScaleMode: 'none',
                autoScaleSliderWidth: 1232,
                autoScaleSliderHeight: 433,
                imageAlignCenter: false,
                arrowsNavAutoHide: true,
                controlNavigation: 'bullets',
                thumbsFitInViewport: false,
                navigateByClick: true,
                startSlideId: 0,
                autoPlay: {
                    // autoplay options go here
                    enabled: true,
                    pauseOnHover: true,
                    delay: 7000,
                    stopAtAction: false
                },
                transitionType: 'move',
                globalCaption: false,
                deeplinking: {
                    enabled: true,
                    change: false
                },
                imgWidth: 1232,
                imgHeight: 433
            });
        });
    </script>
</body>
</html>