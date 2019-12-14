// import all necessary DOM API classes
import org.apache.xerces.parsers.*;
import org.apache.xerces.dom.*;
import org.w3c.dom.*;
public class DOMParser{
	public static void main(String[] args) {
		System.out.println("Food Pairings");  
		try {
			// creates a DOM parser object
			DOMParser parser = new DOMParser();
			parser.parse("beef.xml"); 

			// stores the tree object in a variable
         		org.w3c.dom.Document doc  = parser.getDocument();

			// returns a list of all city elements in my city list
	 		NodeList list = doc.getElementsByTagName("beef");

			// now, for every element in the city list, check if the
			// "vacation" attribute is set and if yes, print out the   
			// information about the vacationer.
			for(int i = 0, length = list.getLength(); i < length; i++){
				Element beef  = (Element)list.item(i);
				Attr Pairings = beef.getAttributeNode("id");
				if(pairing!= null){
					String p = pairing.getValue();
					System.out.print(p + " is vacationing in ");

					// grab information about city name and country
					// directly from the DOM tree object
					ParentNode cut = (ParentNode)
					doc.getElementsByTagName("cut").item(0);
					ParentNode taste = (ParentNode)
					doc.getElementsByTagName("taste").item(0);
					ParentNode temperature = (ParentNode)
					doc.getElementsByTagName("temperature").item(0);
					ParentNode sauce = (ParentNode)
					doc.getElementsByTagName("sauce").item(0);
					ParentNode wine = (ParentNode)
					doc.getElementsByTagName("wine").item(0);
					System.out.println(cut.getTextContent() + ", " + taste.getTextContent()", " + temperature.getTextContent()", " + sauce.getTextContent()", " + wine.getTextContent());
				}
			}
		} catch (Exception e) {         
			System.out.println(e.getMessage());
		}  
	}
}
