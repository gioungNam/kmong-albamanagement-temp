import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

    public LoginServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // 세션을 가져옵니다. 없다면 null을 반환합니다.
        HttpSession session = request.getSession(false);

        // 로그인 세션이 없다면 로그인 페이지
        if (session == null || session.getAttribute("user") == null) {
            // 클라이언트에게 login.jsp 페이지를 전달합니다.
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        } else {
             // 메인 페이지로 리다이렉트
             response.sendRedirect("/");
        }


        
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
        
                if ("admin".equals(username) && "9871".equals(password)) {
                    // 로그인 성공, 세션에 사용자 정보 저장
                    HttpSession session = request.getSession();
                    session.setAttribute("user", username);

                    // 메인 페이지로 리다이렉트
                    response.sendRedirect("/");
                } else {
                    // 아이디나 비밀번호가 틀렸으면 로그인 페이지로 다시 보냄
                    response.setContentType("text/html; charset=UTF-8");
                    response.getWriter().println("<script>alert('회원정보가 유효하지 않습니다.');location.href='login.jsp';</script>");
                }
    }
}
