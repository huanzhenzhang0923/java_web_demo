import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/TestParamServlet")
public class TestParamServlet extends HttpServlet {
    public TestParamServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();

        ServletContext context=getServletContext();
        String maxCartSize=context.getInitParameter("max-shopping-cart-size");
        String teamName=context.getInitParameter("project-team-name");

        out.println("<html><body>");
        out.println("Max-cart size: "+maxCartSize);
        out.println("<br/><br/>");
        out.println("Team Name: "+teamName);
        out.println("</body></html>");
    }
}