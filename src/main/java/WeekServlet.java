import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WeekServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // 쿼리 파라미터 추출
        String date = request.getParameter("date");

        // date 값을 request 속성에 추가
        request.setAttribute("date", date);

        // JSP 페이지로 요청 전달
        request.getRequestDispatcher("/week.jsp").forward(request, response);
    }
}