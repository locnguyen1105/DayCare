/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nhat anh
 */
public class Album implements DatabaseInfo{
     private int mid;    
    private String img;
    private Date date;
    

    public Album() {
    }

    public Album(int mid,  String img, Date date) {
        this.mid = mid;
       
        this.img = img;
        this.date = date;
       
    }

    public int getMid() {
        return mid;
    }

    public void setMid(int mid) {
        this.mid = mid;
    }

    

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    

    public static ArrayList<Album> getAlbum() {
        ArrayList<Album> album = new ArrayList<>();
        Connection con = null;
        try {
            Class.forName(driverName);
            con = DriverManager.getConnection(HOSTNAME, USERNAME, PASSWORD);
            PreparedStatement stmt = con.prepareStatement("select id, img, date from album order by date asc");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);             
                String img = rs.getString(2);
                Date date = rs.getDate(3);              
                album.add(new Album(id, img, date));
            }

        } catch (Exception ex) {
            Logger.getLogger(Album.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(Album.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return album;
    }

}
