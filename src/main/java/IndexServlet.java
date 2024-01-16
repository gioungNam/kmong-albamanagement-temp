import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class IndexServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public IndexServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 세션을 가져옵니다. 없다면 null을 반환합니다.
        HttpSession session = request.getSession(false);

        // 로그인 세션이 없다면 로그인 페이지로 리다이렉트
        if (session == null || session.getAttribute("user") == null) {
            response.sendRedirect("/login");
        } else {
            request.getRequestDispatcher("/main.jsp").forward(request, response);
        }
    
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
