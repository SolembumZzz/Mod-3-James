import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

import static java.lang.String.format;

@WebServlet(name = "DiscountCalculator", value = "/display-discount")
public class DiscountCalculator extends HttpServlet {
//    Discount Amount: Lượng chiết khấu
//    Discount Price: Giá sau khi đã được chiết khấu
//    Công thức tính chiết khấu là:
//    Discount Amount = List Price * Discount Percent * 0.01
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float price = Float.parseFloat(request.getParameter("price"));
        float discount = Float.parseFloat(request.getParameter("discount"));

        float discountAmount = price * (discount/100) * 0.01f;
        float finalPrice = price - discountAmount;

        PrintWriter print = response.getWriter();

        print.println("<html>");
        print.println("<h1> Discount Amount: ");
        print.println(discountAmount);
        print.println("</h1>");
        print.println("<h1> Final Price: ");
        print.printf(format("%.0f", finalPrice));
        print.println("</h1>");
        print.println("</html>");
    }
}
