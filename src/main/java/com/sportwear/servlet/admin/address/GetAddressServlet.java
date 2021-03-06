package com.sportwear.servlet.admin.address;

import com.sportwear.service.address.AddressService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/address-index")
public class GetAddressServlet extends HttpServlet {

    private AddressService addressService = new AddressService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("addresses", addressService.getAllAddress());
        request.getRequestDispatcher("/jsp/admin/manager/address/add-get-delete.jsp").forward(request, response);
    }
}
