/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Daycare;
import Model.Display;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.mail.Session;
import javax.mail.internet.MimeMessage;
import javax.mail.PasswordAuthentication;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nhat anh
 */
public class ContactServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ContactServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ContactServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
        String mail = request.getParameter("mail") , subject = request.getParameter("subject"), message = request.getParameter("message");
        message = mail + " send a mail with the content : " + message;
//        sess.remove("machineList");
//        String to = mail;//change accordingly  
//        String from = "llnforever101@gmail.com";
//        String host = "localhost:1010";
//
//        //Get the session object  
//        Properties properties = System.getProperties();
//        properties.setProperty("smtp.gmail.com",host);
//        Session session = Session.getInstance(properties);
//
//        //compose the message  
//        try {
//            MimeMessage message2 = new MimeMessage(session);
//            message2.setFrom(new InternetAddress(from));
//            message2.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
//            message2.setSubject(name);
//            message2.setText(message);
//            Transport.send(message2);
//            System.out.println("message sent successfully....");
//        } catch (MessagingException mex) {
//            mex.printStackTrace();
//        }
        final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
        // Get a Properties object
        Properties props = System.getProperties();
        props.setProperty("mail.smtp.host", "smtp.gmail.com");
        props.setProperty("mail.smtp.socketFactory.class", SSL_FACTORY);
        props.setProperty("mail.smtp.socketFactory.fallback", "false");
        props.setProperty("mail.smtp.port", "465");
        props.setProperty("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.auth", "true");
        props.put("mail.debug", "true");
        props.put("mail.store.protocol", "pop3");
        props.put("mail.transport.protocol", "smtp");
        final String username = "machine199923@gmail.com";//
        final String password = "Okela19999";
        try {
             Session session = Session.getDefaultInstance(props,
                    new Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(username, password);
                }
            });

            // -- Create a new message --
            Message msg = new MimeMessage(session);

            // -- Set the FROM and TO fields --
            msg.setFrom(new InternetAddress("machine199923@gmail.com"));
            msg.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse("locnxde130108@fpt.edu.vn", false));
            msg.setSubject(subject);
            msg.setText(message);
            msg.setSentDate(new Date());
            Transport.send(msg);
            System.out.println("Message sent.");
        } catch (MessagingException e) {
            System.out.println("Erreur d'envoi, cause: " + e);
        }
         HttpSession a = request.getSession();
         Daycare daycare = Daycare.getInfo();         
        int[] arr = Display.toArray(Display.getDisplay1().getCount());
        a.setAttribute("daycare", daycare);
        a.setAttribute("arr", arr);
        request.getRequestDispatcher("Contact.jsp").forward(request, response); 
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {
     
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
