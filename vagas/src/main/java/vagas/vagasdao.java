package vagas;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class vagasdao {
	public List<vagas> Listavagas() throws Exception 
	{
		
		List<vagas> listaVaga = new ArrayList<vagas>();
		Conexao cnx = new Conexao();
		Connection conn = cnx.Conectar();
		String sql ="";
		
		sql="select * from vagas";
	
        PreparedStatement ps=conn.prepareStatement(sql);  
        ResultSet rs = ps.executeQuery();  
        while(rs.next()) 
        {
        	vagas vaga= new vagas();
        	vaga.id_vagas=rs.getInt("id_vagas");
        	vaga.descricao=rs.getString("descricao");	
            vaga.req_obrigatorios=rs.getString("req_obrigatorios");
            vaga.req_desejaveis=rs.getString("req_desejaveis");
            vaga.remuneracao=rs.getFloat("remuneracao");
            vaga.aberta=rs.getInt("aberta");
            vaga.beneficios=rs.getString("beneficios");
            vaga.local_trabalho=rs.getString("local_trabalho");
        	listaVaga.add(vaga);
  
        }
        
        ps.close();
        rs.close();
        conn.close();
        cnx.FecharConexao();
        
        return listaVaga;
	}
	public void CadastrarVaga(vagas vaga) throws SQLException, Exception 
	{
		Conexao cnx = new Conexao(); 
		String sql = null ;
		sql=" insert into vagas (descricao,req_obrigatorios,req_desejaveis,remuneracao,aberta,beneficios,local_trabalho) "
				+ " values(?,?,?,?,?,?,?) ";
		
		PreparedStatement pr = cnx.Conectar().prepareStatement(sql);
		pr.setString(1, vaga.descricao);
		pr.setString(2, vaga.req_obrigatorios);
		pr.setString(3,vaga.req_desejaveis);
		pr.setFloat(4, vaga.remuneracao);
		pr.setFloat(5, vaga.aberta);
		pr.setString(6, vaga.beneficios);
		pr.setString(7, vaga.local_trabalho);
		pr.execute();
		pr.close();
		cnx.FecharConexao();
	}
	
	public void deletaVaga(int id) throws SQLException, Exception {
		Conexao cnx = new Conexao(); 
		Connection conn = cnx.Conectar();
		String sql=" delete from vagas where id_vagas=" + id;
		PreparedStatement ps = cnx.Conectar().prepareStatement(sql);
		ps.execute();
		ps.close();
		cnx.FecharConexao();
	}
	public vagas getVaga(int id) throws SQLException, Exception {
		Conexao cnx = new Conexao(); 
		Connection conn = cnx.Conectar();
		String sql=" select * from vagas where id_vagas=" + id;
		PreparedStatement ps = conn.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		
		vagas vaga= new vagas();
		while(rs.next()) {
			vaga.id_vagas=rs.getInt("id_vagas");
        	vaga.descricao=rs.getString("descricao");	
            vaga.req_obrigatorios=rs.getString("req_obrigatorios");
            vaga.req_desejaveis=rs.getString("req_desejaveis");
            vaga.remuneracao=rs.getFloat("remuneracao");
            vaga.aberta=rs.getInt("aberta");
            vaga.beneficios=rs.getString("beneficios");
            vaga.local_trabalho=rs.getString("local_trabalho");
        
		}
		
		ps.close();
		rs.close();
        conn.close();
        cnx.FecharConexao();
        
        return vaga;		
	}
	
	public void editarVaga(vagas vaga) throws SQLException, Exception {
		Conexao cnx = new Conexao(); 
		String sql = null ;
		sql=" update vagas set descricao=?,req_obrigatorios=?,req_desejaveis=?,remuneracao=?,aberta=?,beneficios=?,local_trabalho=? where  id_vagas="  
				+ vaga.id_vagas;
		
		PreparedStatement pr = cnx.Conectar().prepareStatement(sql);
		pr.setString(1, vaga.req_desejaveis);
		pr.setString(2, vaga.req_obrigatorios);
		pr.setString(3,vaga.req_desejaveis);
		pr.setFloat(4, vaga.remuneracao);
		pr.setInt(5, vaga.aberta);
		pr.setString(6, vaga.beneficios);
		pr.setString(7, vaga.local_trabalho);
		pr.execute();
		pr.close();
		cnx.FecharConexao();
	}




	



}
