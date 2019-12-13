<%@ page import="static com.servlet.orm.Constants.*" %>
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
            <img id="imagebg" src=<%=BACkGROUND_IMG_SRC%>>
        </div>

    </section>
    <br>
    <section>
        <div class="section2">
            <h2 class="text-center" id="firstHeading">How Finzy Works</h2>
            <p id ="firstHeadingText" class="text-center">finzy connects personal loan borrowers with investors</p>
            <div class="row py-3">
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class=" mx-auto text-center circlebg"><img class ="mt-4"src=<%=DIGITAL_LOGO%> ></div>
                    <p class="text-center mt-5"> Digitally Connect borrowers <br>
                        and investors</p>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 ">
                    <div class=" mx-auto text-center circlebg"><img class ="mt-4" src=<%=DOCUMENTATION_LOGO%> class="icons"></div>
                    <p class="text-center mt-5"> Documentation &
                        <br>            Disbursement of Loans</p>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="mx-auto text-center circlebg"><img class ="mt-4" src=<%=EMI_LOGO%> class="icons"></div>
                    <p  class="text-center mt-5"> Automated monthly EMI <br>
                        collection & transfer</p>
                </div>

            </div>
        </div>
    </section>
    <br><br> <br><br>      <section>
    <h2 class="text-center text-primary" >What do I need to do for a Personal Loan</h2>
    <p class="text-center mt-5">finzy makes entire borrowing process simple and user friendly
    </p>
    <p class="text-center">You can get your loan funded in as little as 48 hours </p>
    <br><br><br>
    <div class="text-center mt-5"><img class="desktopImages" src=<%=DESKTOP_BG_IMG%>>
        <img class="mx-auto mobileImage" src=<%=MOBILE_BG_IMG%>>
    </div>
</section>
    <section >
        <br><br>
        <h2 class="text-center text-primary mt-5">The Core Team</h2>
        <p class="text-center mt-5">The founding team of Finzy are professionals who have excelled in their fields ranging across finance,</p>
        <p class="text-center">technology, product, sales, marketing and leadership.</p>
        <br>
        <div class="cards row py-3 text-center mx-auto">
            <div class="card mx-auto col-lg-3 col-md-6 col-sm-12" style="width: 18rem;">
                <img src=<%=CEO_IMG%> class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Amit More</h5>
                    <p>Founder & CEO</p>
                    <p class="card-text">Amit brings vision, business strategy and core financial sector domain knowledge to Finzy. Amit is an expert in the Indian Banking & Financial Services industry with over 16 years of experience across ICICI Bank, Credit Suisse AG and Edelweis</p>

                </div>
            </div>
            <div class="card mx-auto col-lg-3 col-md-6 col-sm-12" style="width: 18rem;">
                <img src=<%=CTO_IMG%> class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title text-right">Abhinandan Sangam</h5>
                    <p>Co-founder & CTO</p>
                    <p class="card-text">Abhinandan is an expert in building capabilities across geographies. He oversees Tech and Product at finzy and has over 19 years of experience with organizations like ThoughtWorks, Sabre, MindTree, Siemens, Amadeus. </p>

                </div>
            </div>
            <div class="card mx-auto col-lg-3 col-md-6 col-sm-12" style="width: 18rem;">
                <img src=<%=CMO_IMG%> class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Vishwas Dixit</h5>
                    <p>Co-founder & CMO</p>
                    <p class="card-text">Vishwas is the face of Finzy. With 23 years of Sales, Marketing & Distribution experience in organizations like Toyota, TVS and Dunlop,he brings in expertise in market expansion projects and creating distribution networks. </p>

                </div>
            </div>
            <div class="card mx-auto col-lg-3 col-md-6 col-sm-12" style="width: 18rem;">
                <img src=<%=CIO_IMG%> class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Apoorv Gawde</h5>
                    <p>CIO & Head of Product</p>
                    <p class="card-text">Apoorv has over 13 years of experience in envisioning and building digital products. He has worked across the globe to create and deliver products. With a passion for experience design, at finzy, he focuses on product strategy and service design. </p>

                </div>
            </div>
        </div>
    </section>
    <br><br><br><br>
    <section>
        <div class="p-3 mb-2 bg-light text-dark">
            <h1 class="text-center text-primary">What our Customers Say</h1>
            <p class="text-center mt-5"> Here are some dreams fulfilled </p>
            <div class="cards p-3 mb-2 bg-light text-dark">
                <div class="row py-3 text-center mx-auto">
                    <div class="card mx-auto col-lg-3 col-md-6 col-sm-12" style="width: 18rem;">
                        <img src=<%=CUSTOMER_UMA%> class="card-img-overlay" alt="...">
                        <div class="card-body">
                            <h5 class="card-title text-right">Uma Maheshwari</h5>
                            <p class="text-right">Bangalore</p>
                            <p class="card-text">"On sharing my requirement, I got a loan of â‚¹5 Lacs from finzy in 2 working days. I used it for doing up the interiors of my flat." </p>

                        </div>
                    </div>
                    <div class="card mx-auto col-lg-3 col-md-6 col-sm-12" style="width: 18rem;">
                        <img src=<%=CUSTOMER_BIKRAM%> class="card-img-overlay" alt="...">
                        <div class="card-body">
                            <h5 class="card-title text-right">Bikram Chatterjee</h5>
                            <p class="text-right">Bangalore</p>
                            <p class="card-text"> "Itâ€™s an absolutely brilliant venture! The process is completely hassle free and you are treated like the most important person in the world. I was completely awestruck with the process and the experience. Thanks finzy for making me independent and helping me live my dream!" </p>

                        </div>
                    </div>
                    <div class="card mx-auto col-lg-3 col-md-6 col-sm-12" style="width: 18rem;">
                        <img src=<%=CUSTOMER_NAIDU%> class="card-img-overlay" alt="...">
                        <div class="card-body">
                            <h5 class="card-title text-right">L Giri Naidu</h5>
                            <p class="text-right">Bangalore</p>
                            <p class="card-text">"What impressed me the most was finzyâ€™s online process of self uploading basic documents, which made me feel safe and comfortable. All in all the entire process was fast, safe and convenient."   </p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br><br><br>
    <section>
        <h1 class="text-center text-primary">We have been in the news</h1>
        <p class="text-center mt-5">Here's What The Media Has To Say About Us </p>
        <div class="cards">
            <div class="cards row py-3 text-center mx-auto">

                <div class="card mx-auto" style="width: 18rem;">
                    <div class="card-header bg-transparent border-success"> <img src=<%=YOUR_STORY_IMG%>></div>
                    <div class="card-body">
                        <p class="card-text">
                            Finzy wants to change how India sees lending</p>
                    </div>
                </div>
                <div class="card mx-auto" style="width: 18rem;">
                    <div class="card-header bg-transparent border-success"> <img src=<%=TIMES_OF_INDIA_IMG%>></div>
                    <div class="card-body">
                        <p class="card-text">
                            Finzy secures $2.3 million in pre-series A funding</p>
                    </div>
                </div>
                <div class="card mx-auto" style="width: 18rem;">
                    <div class="card-header bg-transparent border-success"> <img class="w-100" src=<%=INDIAN_EXPRESS_IMG%>></div>
                    <div class="card-body">
                        <p class="card-text">finzy receives NBFC-P2P certification from RBI</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="cards">
            <div class="cards row py-3 text-center mx-auto">

                <div class="card mx-auto" style="width: 18rem;">
                    <div class="card-header bg-transparent border-success"> <img class="w-75" src=<%=ECONOMIC_TIMES_IMG%>></div>
                    <div class="card-body">
                        <p class="card-text">
                            Millenials tap fintech startups for holidays</p>
                    </div></div>
                <div class="card mx-auto" style="width: 18rem;">
                    <div class="card-header bg-transparent border-success"> <img class="w-100"src=<%=BWCI_WORRLD_IMG%>></div>
                    <div class="card-body">
                        <p class="card-text">
                            Finzy to Trigger Pan-India Channel Tie-ups for P2P Lending Visibilityys</p>
                    </div>
                </div>
                <div class="card mx-auto" style="width: 18rem;">
                    <div class="card-header bg-transparent border-success"> <img class="w-100" src=<%=TECH_HERALD_IMG%>></div>
                    <div class="card-body">
                        <p class="card-text">Finzy achieves zero defaults in the first year of operations</p>
                    </div>
                </div>
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
</div>
<br><br><br><br>
<jsp:include page="<%=FOOTER_FILE%>"></jsp:include>
</body>


</html>
