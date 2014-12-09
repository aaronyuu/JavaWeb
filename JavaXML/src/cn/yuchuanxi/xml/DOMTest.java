package cn.yuchuanxi.xml;

import java.io.IOException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class DOMTest {

	public static void main(String[] args) {
		DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory
				.newInstance();

		try {
			DocumentBuilder documentBuilder = documentBuilderFactory
					.newDocumentBuilder();
			Document doc = documentBuilder.parse("books.xml");
			// 通过getElementsByTagName方法,传入节点名获取节点列表
			NodeList bookList = doc.getElementsByTagName("book");

			for (int i = 0; i < bookList.getLength(); i++) {
				System.out.println("============下面开始遍历第" + (i + 1)
						+ "本书的内容==========");
				Node book = bookList.item(i);
				System.out.println(book.getTextContent());
				// System.out.println("节点名:"+book.getNodeName());
				// System.out.println("\t节点属性:");
				NamedNodeMap attr = book.getAttributes();
				// System.out.println("第"+(i+1)+"本书,共有"+attr.getLength()+"个属性");

				// 如果已知属性名是id,则可通过下面方法获取属性值
				Element bookE = (Element) bookList.item(i);
				System.out.println("ID属性值是:" + bookE.getAttribute("id"));

				for (int j = 0; j < attr.getLength(); j++) {
					System.out.println(attr.item(j).getNodeName() + ":"
							+ attr.item(j).getNodeValue());
				}

				// 遍历book节点的子节点列表
				NodeList bookChildNodes = book.getChildNodes();
				for (int k = 0; k < bookChildNodes.getLength(); k++) {
					// 获取book节点的子节点
					Node bookChildNode = bookChildNodes.item(k);
					if (bookChildNode.getNodeType() == Node.ELEMENT_NODE) {
						System.out.print("节点名是:" + bookChildNode.getNodeName());
						System.out.println("===>节点内容是:"
								+ bookChildNode.getTextContent());
						// System.out.println("===>节点类型是:"+bookChildNode.getNodeType());
					}
				}

				System.out.println("============下面结束遍历第" + (i + 1)
						+ "本书的内容==========");
			}

			// for (Node book : bookList) {
			//
			// }

		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
