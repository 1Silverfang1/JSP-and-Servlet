<%@ page import="static Constants.Constants.*" %>
<%@ page import="Constants.EnumReviewCards" %>
<%@ page import="Constants.EnumTeamCards" %>
<%@ page import="Constants.EnumMediaCards" %>
<%@ page import="Constants.EnumFinzyWorks" %>
<%@ page import="static Constants.URLConstants.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href= <%=BOOTSTRAP_CSS%>>
    <link rel="stylesheet" href=<%=LANDING_PAGE_CSS%>>
    <title>Landing Page</title>
</head>
<body>
<div>
    <jsp:include page="<%=HEADER_FILE%>"></jsp:include>
    <br>
    <section>
        <div id ="background" class="mt-5">
            <img id="imagebg" src=<%=BACKGROUND_IMG_SRC%>>
        </div>
    </section>
    <br>
    <section>
        <div class="FinzyWorks">
            <h2 class="text-center" id="firstHeading">How Finzy Works</h2>
            <p id ="firstHeadingText" class="text-center">finzy connects personal loan borrowers with investors</p>
            <div class="row py-3 justify-content-center text-center mx-auto">
                <%
                    for (EnumFinzyWorks enumFinzyWorks: EnumFinzyWorks.values())
                    {
                %>
                <div class=" card-custom mx-5 mb-4">
                    <div class=" mx-auto text-center circlebg"><img class ="mt-4"src=<%=enumFinzyWorks.imgsrc%> ></div>
                    <p class="text-center mt-5"><%=enumFinzyWorks.details%></p>
                </div>
                <%
                    }
                %>
                </div>
        </div>
    </section>

        <br><br><br><br>

    <section>
     <h2 class="text-center text-primary" >What do I need to do for a Personal Loan</h2>
     <p class="text-center mt-5">finzy makes entire borrowing process simple and user friendly</p>
      <p class="text-center">You can get your loan funded in as little as 48 hours </p>
     <br><br><br>
     <div class="text-center mt-5"><img class="desktopImages" src=<%=DESKTOP_BG_IMG%>><img class="mx-auto mobileImage" src=<%=MOBILE_BG_IMG%>>
     </div>
     </section>


        <section >
        <br><br>
        <h2 class="text-center text-primary mt-5">The Core Team</h2>
        <p class="text-center mt-5">The founding team of Finzy are professionals who have excelled in their fields ranging across finance,</p>
        <p class="text-center">technology, product, sales, marketing and leadership.</p>
    <br><br>
    <section>
        <div class="cards row py-3 justify-content-center text-center mx-auto">
            <%
                for(EnumTeamCards enumTeamCards: EnumTeamCards.values())
                    {
                %>
                <div class="card card-custom mx-2 mb-3" style="width: 18rem;">
                    <img src=<%=enumTeamCards.imgsrc%> class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%=enumTeamCards.name%></h5>
                        <p><%=enumTeamCards.position%></p>
                        <p class="card-text"><%=enumTeamCards.about%></p>
                    </div></div>
            <%}%>
        </div>
    </section>
    <section>
        <div class="cards p-3 mb-2 bg-light text-dark">
            <div class="row py-3 text-center mx-auto">
        <%
            for(EnumReviewCards enumReviewCards : EnumReviewCards.values())
            {
        %>
                <div class="card mx-auto col-lg-3 col-md-6 col-sm-12" style="width: 18rem;">
                    <img src=<%=enumReviewCards.imageSrc%> class="card-img-overlay" alt="...">
                    <div class="card-body">
                        <h5 class="card-title text-right"><%=enumReviewCards.name%></h5>
                        <p class="text-right"><%=enumReviewCards.location%></p>
                        <p class="card-text"><%=enumReviewCards.review%></p>
            </div>
        </div>
        <%
            }
        %>
    </div>
        </div>
    </section>
    <br><br><br>
    <section>
        <h1 class="text-center text-primary">We have been in the news</h1>
        <p class="text-center mt-5">Here's What The Media Has To Say About Us </p>
        <div >
            <div class="cards row py-3 text-center justify-content-center mx-auto">
                <%
                    for(EnumMediaCards enumMediaCards: EnumMediaCards.values())
                    {
                %>
                <div class="card card-custom mx-5 mb-3" style="width: 18rem;">
                        <div class="card-header bg-transparent border-success"> <img class="w-100"src=<%=enumMediaCards.imgsrc%>></div>
                        <div class="card-body">
                            <p class="card-text">
                             <%=enumMediaCards.story%></p>
                        </div>
                    </div>
            <%
                }
            %>
                </div>
        </div>
    </section>
    <br><br><br><br>
    <section>
        <h1 class="text-center text-primary">RBI Disclaimer</h1>
        <p class="text-center">The company is having a valid Certificate of Registration dated June 28, 2018 issued by the Reserve Bank of India under Section 45 IA of the Reserve Bank of
            <br>India Act, 1934.
            <br>However, the RBI does not accept any responsibility or guarantee about the present position as to the financial soundness of the company or for the correctness <br> any of the statements or representations made or opinions expressed by the company and for repayment of deposits / discharge of liabilities by the company. </p>
    </section>
<br><br><br><br>
<jsp:include page="<%=FOOTER_FILE%>"></jsp:include>
</body>
</html>
