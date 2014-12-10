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

public class DOM {

	public static void main(String[] args) {
		//1.��ȡDocumentBuilderFactory
		DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory
				.newInstance();

		try {
			//2.��ȡDocumentBuilder
			DocumentBuilder documentBuilder = documentBuilderFactory
					.newDocumentBuilder();
			//3.��ȡDocument
			Document doc = documentBuilder.parse("http://localhost:8080/YssCRM/books.xml");
			//a. ͨ��getElementsByTagName����,����ڵ�����ȡbook�ڵ��б�
			NodeList bookList = doc.getElementsByTagName("book");
			//ѭ�������ڵ��б�
			for (int i = 0; i < bookList.getLength(); i++) {
				System.out.println("============���濪ʼ������" + (i + 1) + "���������==========");
				//ͨ��NodeList.item(i)��ȡһ���ڵ��б��е�һ���ڵ�
				Node book = bookList.item(i);
//				System.out.println(book.getTextContent());
				// System.out.println("�ڵ���:"+book.getNodeName());
				// System.out.println("\t�ڵ�����:");
				//��ȡ�ڵ������б�
				NamedNodeMap attr = book.getAttributes();
				
				/*
				 * ��ȡ���Է���һ:
				 */
				//��ȡ���Ը���
				 System.out.println("���Ը���:"+attr.getLength());
				 //������������
					for (int j = 0; j < attr.getLength(); j++) {
						//��ȡ������:
						System.out.print("������"+attr.item(j).getNodeName() );
						//��ȡ����ֵ
						System.out.println("\t����ֵ:"+ attr.item(j).getNodeValue());
					}

				/*
				 * ��ȡ����ֵ������:
				 * �����֪��������id,���ͨ�����淽����ȡ����ֵ
				 */
				Element bookE = (Element) bookList.item(i);
				System.out.println("ID����ֵ��:" + bookE.getAttribute("id"));

		

				/*
				 * ��ȡbook�ڵ���ӽڵ��б�
				 */
				NodeList bookChildNodes = book.getChildNodes();
				//�����ӽ��.
				for (int k = 0; k < bookChildNodes.getLength(); k++) {
					// ��ȡbook�ڵ�ĵ����ӽڵ�
					Node bookChildNode = bookChildNodes.item(k);
					// Node.ELEMENT_NODE �����Ǹ�?
					if (bookChildNode.getNodeType() == Node.ELEMENT_NODE) {
						//��ȡ�ڵ���
						System.out.print("�ڵ�����:" + bookChildNode.getNodeName());
						//ͨ������getTextContent()��ȡ�ڵ��ǩ����������
						System.out.print("===>�ڵ�������:"+ bookChildNode.getTextContent());
						//��ȡ�ڵ�����
						 System.out.println("===>�ڵ�������:"+bookChildNode.getNodeType());
					}
				}

				System.out.println("============�������������" + (i + 1)
						+ "���������==========\n");
			}

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
