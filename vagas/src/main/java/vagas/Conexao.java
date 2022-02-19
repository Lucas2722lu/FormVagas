package vagas;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
		
	public String usuario="root"; // informar usu�rio
	public String senha=""; // informar senha
	java.sql.Connection conn = null;
	
	public Connection Conectar() throws Exception 
	{
			//Class.forName("com.mysql.jdbc.Driver"); -> USO DEPRECIADO
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost/rh"; //-> localhost/nomeodbanco
	        conn = DriverManager.getConnection(url, usuario, senha);
	        System.out.println("Banco Conectado");
	        return conn;
	}
	
	public void FecharConexao() throws SQLException {
		if(conn!=null) 
		{
			if (!conn.isClosed()) 
			{
				conn.close();
				conn=null;
			}
		}
	}


}



