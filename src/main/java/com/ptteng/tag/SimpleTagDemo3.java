package com.ptteng.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.SkipPageException;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * Created by litao on 2017/3/2.
 */
public class SimpleTagDemo3 extends SimpleTagSupport {

    public void doTag() throws JspException, IOException {
        JspFragment jspFragment = this.getJspBody();
        //控制后面的JSP是否执行
        throw new SkipPageException();
    }

}
