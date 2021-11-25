package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dao.DBConnection;
import dao.Content;
import dao.Member;

public class DAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	public List<Content> getAllContent() {
		List<Content> list = new ArrayList<>();
		String query = "select * from Content";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Content(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getInt(8)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	public Member getMember(int id) {
		String query = "select * from Member where id = " + id;
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			rs.next();
			return new Member(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
					rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		}

	}


	public static void main(String[] args) {
		DAO dao = new DAO();
		Member list = dao.getMember(4);
		
			System.out.print(list.getPhone());
			
	
	}
	public Content getContent(int id) {
		String query = "select * from Content where id = ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Content(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getInt(8));
			}
		} catch (Exception e) {
		}
		return null;
	}

	public Member editMember(int id, String firstname, String lastname, String email, String phone, String description,
			String updateTime) {
		String query = "update Member set firstname = ?,lastname= ?, email =?, phone =?,description=?,updateTime=? where id = ?;";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, firstname);
			ps.setString(2, lastname);
			ps.setString(3, email);
			ps.setString(4, phone);
			ps.setString(5, description);
			ps.setString(6, updateTime);
			ps.setInt(7, id);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}

	public List<Content> searchContents(String txtSearch) {
		List<Content> list = new ArrayList<>();
		String query = "select * from content \r\n" + "where title like ? or content like ? or brief like ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + txtSearch + "%");
			ps.setString(2, "%" + txtSearch + "%");
			ps.setString(3, "%" + txtSearch + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Content(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getInt(8)));
			}
		} catch (Exception e) {

		}
		return list;
	}

	public Content insertContent(String title, String brief, String content, String createddate, String updatetime) {

		String query = "INSERT INTO Content(title,brief,content,createddate,updatetime) VALUES (?,?,?,?,?)";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, title);
			ps.setString(2, brief);
			ps.setString(3, content);
			ps.setString(4, createddate);
			ps.setString(5, updatetime);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}

	public Content editContent(int id, String title, String brief, String content, String updatetime) {
		String query = "update Content set title = ?,brief= ?, content =?, updatetime =? where id = ?;";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, title);
			ps.setString(2, brief);
			ps.setString(3, content);
			ps.setString(4, updatetime);
			ps.setInt(5, id);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}

	public Content deleteContent(String id) {
		String query = "Delete from Content where id = ?";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, id);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}

	public List<Member> getAllMember() {
		List<Member> list = new ArrayList<>();
		String query = "select * from Member";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Member(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	

	public Content insertMember(String username, String password, String email) {

		String query = "INSERT INTO Member(username,password,email) VALUES (?,?,?)";
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, email);
			ps.executeUpdate();

		} catch (Exception e) {
		}
		return null;
	}



	public Boolean updateMember(String id, String firstname, String lastname, String phone, String email,
			String description) {
		String query = "update Member set firstname = '" + firstname + "', lastname = '" + lastname + "', phone = '"
				+ phone + "', email = '" + email + "', description = '" + description
				+ "', updateTime = now()  where id = " + id;
		try {
			conn = new DBConnection().getConnection();
			ps = conn.prepareStatement(query);
			ps.executeUpdate();
			return true;

		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}

	}
}
