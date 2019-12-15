package Constants;

import static Constants.URLConstants.*;
public enum EnumTeamCards {

    CEO("Amit More","Founder & CEO","Amit brings vision, business strategy and core financial sector domain knowledge to Finzy. Amit is an expert in the Indian Banking & Financial Services industry with over 16 years of experience across ICICI Bank, Credit Suisse AG and Edelweis", CEO_IMG),
    CTO("Abhinandan Sangam","Co-founder & CTO","Abhinandan is an expert in building capabilities across geographies. He oversees Tech and Product at finzy and has over 19 years of experience with organizations like ThoughtWorks, Sabre, MindTree, Siemens, Amadeus.", CTO_IMG),
    CMO("Vishwas Dixit","Co-founder & CMO","Vishwas is the face of Finzy. With 23 years of Sales, Marketing & Distribution experience in organizations like Toyota, TVS and Dunlop,he brings in expertise in market expansion projects and creating distribution networks. ",CMO_IMG),
    CIO("Apoorv Gawde","CIO & Head of Product","Apoorv has over 13 years of experience in envisioning and building digital products. He has worked across the globe to create and deliver products. With a passion for experience design, at finzy, he focuses on product strategy and service design. ",CIO_IMG);
   public String name="",position="",about="",imgsrc="";
    EnumTeamCards(String name, String position, String about, String imgsrc) {
        this.name = name;
        this.position = position;
        this.about = about;
        this.imgsrc = imgsrc;
    }

}
