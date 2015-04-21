/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package developerWorks.tldHandlers;

import developerWorks.beans.User;
import java.io.IOException;
import java.util.Map;
import java.util.Set;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author Eric
 */
public class UserHandler extends SimpleTagSupport {
    private User userbean = new User();

    public void setUserbean(User userbean) {
        this.userbean = userbean;
    }
    
    /**
     * Called by the container to invoke this tag. The implementation of this
     * method is provided by the tag library developer, and handles all tag
     * processing, body iteration, etc.
     */
    @Override
    public void doTag() throws JspException, IOException {
        PageContext pc = (PageContext) getJspContext();
        JspWriter out = pc.getOut();
        
        JspFragment f=getJspBody();
        Set<Map.Entry> s = userbean.getProperties().entrySet();
        for (Map.Entry me : s) {
            getJspContext().setAttribute("name", me.getKey());
            getJspContext().setAttribute("value", me.getValue());
            if (f != null) {
                f.invoke(out);
            }
        }
    }
    
}
