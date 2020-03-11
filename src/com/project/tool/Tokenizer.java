package com.project.tool;
import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.analysis.standard.StandardAnalyzer;
import org.apache.lucene.analysis.tokenattributes.CharTermAttribute;
import org.apache.lucene.util.Version;
public class Tokenizer {
   public static void main(String[] args)
     { 
	   try {
			String text = "Spring MVC+MyBatis开发从入门到项目实战";
			StandardAnalyzer sa = new StandardAnalyzer(Version.LUCENE_44);
			TokenStream ts = sa.tokenStream("field", text);
			CharTermAttribute ch = ts.addAttribute(CharTermAttribute.class);
			ts.reset();
			while (ts.incrementToken()) {
				System.out.println(ch.toString());
			}
			ts.end();
			ts.close();
		} catch (Exception ex) {

			ex.printStackTrace();
		}
     }
}
