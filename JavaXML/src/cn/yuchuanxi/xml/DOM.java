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
		//1.获取DocumentBuilderFactory
		DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory
				.newInstance();

		try {
			//2.获取DocumentBuilder
			DocumentBuilder documentBuilder = documentBuilderFactory
					.newDocumentBuilder();
			//3.获取Document
			Document doc = documentBuilder.parse("http://localhost:8080/YssCRM/books.xml");
			//a. 通过getElementsByTagName方法,传入节点名获取book节点列表
			NodeList bookList = doc.getElementsByTagName("book");
			//循环遍历节点列表
			for (int i = 0; i < bookList.getLength(); i++) {
				System.out.println("============下面开始遍历第" + (i + 1) + "本书的内容==========");
				//通过NodeList.item(i)获取一个节点列表中的一个节点
				Node book = bookList.item(i);
//				System.out.println(book.getTextContent());
				// System.out.println("节点名:"+book.getNodeName());
				// System.out.println("\t节点属性:");
				//获取节点属性列表
				NamedNodeMap attr = book.getAttributes();
				
				/*
				 * 获取属性方法一:
				 */
				//获取属性个数
				 System.out.println("属性个数:"+attr.getLength());
				 //遍历所有属性
					for (int j = 0; j < attr.getLength(); j++) {
						//获取属性名:
						System.out.print("属性名"+attr.item(j).getNodeName() );
						//获取属性值
						System.out.println("\t属性值:"+ attr.item(j).getNodeValue());
					}

				/*
				 * 获取属性值方法二:
				 * 如果已知属性名是id,则可通过下面方法获取属性值
				 */
				Element bookE = (Element) bookList.item(i);
				System.out.println("ID属性值是:" + bookE.getAttribute("id"));

		

				/*
				 * 获取book节点的子节点列表
				 */
				NodeList bookChildNodes = book.getChildNodes();
				//遍历子结点.
				for (int k = 0; k < bookChildNodes.getLength(); k++) {
					// 获取book节点的单个子节点
					Node bookChildNode = bookChildNodes.item(k);
					// Node.ELEMENT_NODE 代表是个?
					if (bookChildNode.getNodeType() == Node.ELEMENT_NODE) {
						//获取节点名
						System.out.print("节点名是:" + bookChildNode.getNodeName());
						//通过方法getTextContent()获取节点标签包裹的文字
						System.out.print("===>节点内容是:"+ bookChildNode.getTextContent());
						//获取节点类型
						 System.out.println("===>节点类型是:"+bookChildNode.getNodeType());
					}
				}

				System.out.println("============下面结束遍历第" + (i + 1)
						+ "本书的内容==========\n");
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
