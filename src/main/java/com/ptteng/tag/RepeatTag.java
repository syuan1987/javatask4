package com.ptteng.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.IterationTag;
import javax.servlet.jsp.tagext.Tag;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * Created by litao on 2017/3/2.
 */
public class RepeatTag extends TagSupport {
    int x = 5;
    public int doStartTag() throws JspException {
        return Tag.EVAL_BODY_INCLUDE;
    }

    /**
    * 控制doAfterBody()方法的返回值
     * 如果这个方法返回EVAL_BODY_AGAIN,则web服务器又执行一次标签体
     * 以此类推,一直执行到doAfterBody方法返回SKIP_BODY,则标签体才不会重复执行
    **/
    public int doAfterBody() throws JspException {
        x--;
        if(x>0){
            return IterationTag.EVAL_BODY_AGAIN;
        }else{
            return IterationTag.SKIP_BODY;
        }
    }
}
