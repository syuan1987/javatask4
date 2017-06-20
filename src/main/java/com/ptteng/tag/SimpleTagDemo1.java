package com.ptteng.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * Created by litao on 2017/3/2.
 */
public class SimpleTagDemo1 extends SimpleTagSupport {

    /**简单标签使用这个方法就可以完成所有的业务逻辑
     * 重写doTag方法,控制标签体是否执行
     * */
    public void doTag() throws JspException, IOException {

        //得到代表jsp标签体的JspFragment
        JspFragment jspFragment = this.getJspBody();

        //得到jsp页面的PageContext对象
//        PageContext pageContext = (PageContext) jspFragment.getJspContext();
        //调用JspWriter将标签体的内容输出到浏览器
//        jspFragment.invoke(pageContext.getOut());

        //将标签体的内容输出到浏览器
//        jspFragment.invoke(null);

        //控制jsp页面内容重复执行
        for (int i = 0; i < 5; i ++){
            jspFragment.invoke(null);
        }
    }
}
