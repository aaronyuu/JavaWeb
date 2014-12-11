package cn.yuchuanxi.xml;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class MODELINI {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
//		System.out.println(args.toString());
		MODELINI model=new MODELINI();
		List<String> modelist=new ArrayList<String>();
		//ʵ�ִ�Set��List��ת��
		modelist.addAll(model.getLicList("InitData/MODELINI.XML","FLICMC"));
		Collections.sort(modelist);
		for (String string : modelist) {
			System.out.println(string);
		}
		
		
	}

/**
 * ͨ��XML�ļ���ȡ����б�
 * @param fileName XML�ļ���
 * @param tagname =FLICMC
 * @return ��ɵ��б�
 */
	public  Set<String>  getLicList(String fileName,String tagname){

		Set<String> licList=new HashSet<String>();
		DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
		try {
			DocumentBuilder db=dbf.newDocumentBuilder();
			Document doc=db.parse(fileName	);
			NodeList nodelist=doc.getElementsByTagName(tagname);
			for(int i=0;i<nodelist.getLength();i++){
				Node node=nodelist.item(i);
				String s=node.getTextContent().trim();
				if (s!=null&&s.length()>0){
					//System.out.println(s);
					licList.add(s);
				}
			}
			
			
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return licList;
		
	}
}
