package com.ptteng.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.Tag;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * Created by litao on 2017/3/2.
 */
public class TestTag extends TagSupport {

    /* 重写doEndTag方法，控制jsp页面是否执行
14      * @see javax.servlet.jsp.tagext.TagSupport#doEndTag()
15      */
    public int doEndTag() throws JspException {
        //如果这个方法返回EVAL_PAGE，则执行标签余下的jsp页面，如果返回SKIP_PAGE，则不执行余下的jsp
//        return Tag.SKIP_PAGE;
        return Tag.EVAL_PAGE;
    }
}
