package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.SearchPostsServlet", urlPatterns = "/search")
public class SearchPostsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String search = request.getParameter("search");
        String category = request.getParameter("category");

        request.setAttribute("ads", DaoFactory.getAdsDao().search(search));
        request.setAttribute("categories", DaoFactory.getAdsDao().searchCategory(category));

        request.getRequestDispatcher("/WEB-INF/partials/search.jsp").forward(request, response);
    }

}
