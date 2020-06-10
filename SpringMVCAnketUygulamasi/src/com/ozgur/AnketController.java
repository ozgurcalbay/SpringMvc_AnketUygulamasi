package com.ozgur;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/anket")
public class AnketController {
		static ArrayList<String> list;
		static Connection myConn;
	
		@RequestMapping("/showform")
		public String showform1(Model model) {
			
			Anket anket=new Anket();
			model.addAttribute("anket",anket);
			return "anketform1";
		}
		@RequestMapping("/showform2")
		public String showform1(@ModelAttribute("anket1") Anket anket) {
			list=new ArrayList<>();
			list.add(anket.getAd());
			list.add(anket.getSoyad());
			list.add(anket.getCinsiyet());
			list.add(anket.getSehir());
			list.add(anket.getYas());
			
			
			return "anketform2";
		}
		@RequestMapping("/anketconfirm")
		public String savePersonel(@ModelAttribute("anket2") Anket anket,Model model) {
			model.addAttribute("anket22",list);	
			
String dbUrl="jdbc:oracle:thin:@localhost:1521:xe";
			
			
			try {
				myConn = DriverManager.getConnection(dbUrl,"java","java");
				System.out.println("Baglanti basarili.");
				
			
				
				
				
			} catch (SQLException e) {
				System.out.println("Veritabaný baðlantý hatasý");
				
			}
			
			//kayit ekleme kismi basliyor
			 InetAddress addr=null;
			 String ipAddress="";
			try {
				addr = InetAddress.getLocalHost();
				   ipAddress = addr.getHostAddress();			     
			} catch (UnknownHostException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}			
			
			String harcamalar="";
			for(int i=0;i<anket.getHarcama().length;i++) {
				harcamalar+=(anket.getHarcama())[i];
			}
			
			String bos_zamanlar="";
			for(int i=0;i<anket.getBos_zaman().length;i++) {
				bos_zamanlar+=(anket.getBos_zaman())[i];
			}
			String sql="insert into anketdb (ad, soyad, cinsiyet, sehir, yas, ogr_durum, sektor, gelir, harcama, bos_zaman, ip_adres) values ('"+list.get(0)+"','"+list.get(1)+"','"+list.get(2)+"','"+list.get(3)+"','"+list.get(4)+"','"+anket.getOgrenim_durumu()+"','"+anket.getSektor()+"','"+anket.getGelir()+"','"+harcamalar+"','"+bos_zamanlar+"','"+ipAddress+"')";
			Statement stmt;
			try {
				stmt = myConn.createStatement();
				int rset=stmt.executeUpdate(sql);
				System.out.println("Ekleme islemi Basarili");			
			
			} catch (SQLException e) {
				//System.out.println("Ekleme iþleminde hata oluþtu.");
				System.out.println(e);
			}
			try {
				myConn.close();//db baglantisi kapandi.
				System.out.println("Veritabaný baðlantýsý kapatýldý");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
			
			return "anketconfirm";
		}
	
	}


