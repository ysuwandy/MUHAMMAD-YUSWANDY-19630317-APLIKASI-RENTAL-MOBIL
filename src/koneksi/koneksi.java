
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Apid
 */
public class koneksi {

    public static Object getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
private Connection koneksi;
    public Connection connect(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Berhasil Koneksi");
            
        }catch (ClassNotFoundException ex){
            System.out.println("Gagal Koneksi"+ex);
        }
            String url="jdbc:mysql://localhost/uas19630317";
        
            try{
                koneksi = (Connection) DriverManager.getConnection(url,"root","");
                System.out.println("Berhasil Koneksi Database");          
            }catch (SQLException ex){
                System.out.println("Gagal Koneksi Database"+ex);
            }
            return koneksi;
        }
}
