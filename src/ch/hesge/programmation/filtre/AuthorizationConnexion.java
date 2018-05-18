package ch.hesge.programmation.filtre;

import ch.hesge.programmation.servlet.Login;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class AuthorizationConnexion implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest httpReq = (HttpServletRequest) req;
        HttpSession session = httpReq.getSession();
        if (session != null){

        }
//        if (login(session)) {
//            chain.doFilter(req, resp);
//        } else {
//            HttpServletResponse httpRes = (HttpServletResponse) resp;
//            httpRes.sendError(401, "Not authentified");
//        }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
