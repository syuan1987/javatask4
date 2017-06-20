package com.ptteng.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.io.StringWriter;

/**
 * Created by litao on 2017/3/2.
 */
public class SimpleTagDemo2 extends SimpleTagSupport {
    public void doTag() throws JspException, IOException {

        //得到代表jsp标签体的JspFragment
        JspFragment jspFragment = this.getJspBody();
        StringWriter sw = new StringWriter();
        //将标签体的内容写到sw流中
        jspFragment.invoke(sw);
        //获取sw流缓冲区的内容
        String content = sw.getBuffer().toString();
        content = content.toUpperCase();
        PageContext pageContext = (PageContext) jspFragment.getJspContext();
        //将修改后的content输出到浏览器中
        pageContext.getOut().write(content);
    }
}
