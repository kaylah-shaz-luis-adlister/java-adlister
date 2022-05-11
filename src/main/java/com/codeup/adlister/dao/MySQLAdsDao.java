package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
import com.mysql.cj.jdbc.Driver;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUsername(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description, category, photo) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.setLong(4, ad.getCategory());
            stmt.setString(5, ad.getPhoto());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    @Override
    public List<Ad> search(String search) {
        PreparedStatement statement;

        String query = "SELECT * FROM ads WHERE title LIKE CONCAT('%',?,'%') OR description LIKE CONCAT('%',?,'%')";

        try {

            statement = connection.prepareStatement(query);

            statement.setString(1, search);
            statement.setString(2, search);

            ResultSet rs = statement.executeQuery();

            return createAdsFromResults(rs);

        } catch (SQLException e) {
            throw new RuntimeException("Error searching for ads", e);
        }

    }

    @Override
    public List<Ad> searchCategory(String category) {
        PreparedStatement statement;

        String query = "SELECT * FROM ads WHERE category = (?)";

        try {

            statement = connection.prepareStatement(query);

            statement.setString(1, category);

            ResultSet rs = statement.executeQuery();

            return createAdsFromResults(rs);

        } catch (SQLException e) {
            throw new RuntimeException("Error searching for ads", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("user_id"),
            rs.getString("title"),
            rs.getString("description"),
            rs.getLong("category"),
            rs.getString("photo")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }
}
