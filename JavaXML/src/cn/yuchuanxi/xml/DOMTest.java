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
			// ͨ��getElementsByTagName����,����ڵ�����ȡ�ڵ��б�
			NodeList bookList = doc.getElementsByTagName("book");

			for (int i = 0; i < bookList.getLength(); i++) {
				System.out.println("============���濪ʼ������" + (i + 1)
						+ "���������==========");
				Node book = bookList.item(i);
				System.out.println(book.getTextContent());
				// System.out.println("�ڵ���:"+book.getNodeName());
				// System.out.println("\t�ڵ�����:");
				NamedNodeMap attr = book.getAttributes();
				// System.out.println("��"+(i+1)+"����,����"+attr.getLength()+"������");

				// �����֪��������id,���ͨ�����淽����ȡ����ֵ
				Element bookE = (Element) bookList.item(i);
				System.out.println("ID����ֵ��:" + bookE.getAttribute("id"));

				for (int j = 0; j < attr.getLength(); j++) {
					System.out.println(attr.item(j).getNodeName() + ":"
							+ attr.item(j).getNodeValue());
				}

				// ����book�ڵ���ӽڵ��б�
				NodeList bookChildNodes = book.getChildNodes();
				for (int k = 0; k < bookChildNodes.getLength(); k++) {
					// ��ȡbook�ڵ���ӽڵ�
					Node bookChildNode = bookChildNodes.item(k);
					if (bookChildNode.getNodeType() == Node.ELEMENT_NODE) {
						System.out.print("�ڵ�����:" + bookChildNode.getNodeName());
						System.out.println("===>�ڵ�������:"
								+ bookChildNode.getTextContent());
						// System.out.println("===>�ڵ�������:"+bookChildNode.getNodeType());
					}
				}

				System.out.println("============�������������" + (i + 1)
						+ "���������==========");
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
