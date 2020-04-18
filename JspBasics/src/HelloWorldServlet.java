import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

@WebServlet("/HelloWorld")
public class HelloWorldServlet extends HttpServlet {
    public HelloWorldServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        out.println("<html><body>");
        out.println("<h3>Hello Success!</h3>");
        out.println("<hr>");
        out.println("Time on the server is: "+new Date());
        out.println("</body></html>");
    }
}
