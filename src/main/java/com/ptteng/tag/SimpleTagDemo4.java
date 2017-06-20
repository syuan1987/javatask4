package com.ptteng.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * Created by litao on 2017/3/2.
 */
public class SimpleTagDemo4 extends SimpleTagSupport {
    private int count;

    public void setCount(int count) {
        this.count = count;
    }

    @Override
    public void doTag() throws JspException, IOException {
        for (int i = 0; i < count; i ++){
            this.getJspBody().invoke(null);
        }
    }
}
