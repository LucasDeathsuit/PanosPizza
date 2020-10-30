package br.com.panospizza.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import br.com.panospizza.Factory.ConnectionFactory;
import br.com.panospizza.modelo.Contato;

public class ContatoDao {

	private Connection connection;

	public ContatoDao() {
		this.connection = new ConnectionFactory().getConnection();
	}

	public void adiciona(Contato contato) {
		String sql = "insert into contatos" + "(nome, telefone, endereco, cep, mensagem)" + " values (?, ?, ?, ?, ?)";

		try {
			PreparedStatement stmt = connection.prepareStatement(sql);

			stmt.setString(1, contato.getNome());
			stmt.setString(2, contato.getTelefone());
			stmt.setString(3, contato.getEndereco());
			stmt.setString(4, contato.getCep());
			stmt.setString(5, contato.getMensagem());

			stmt.execute();
			stmt.close();

		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public List<Contato> getLista() {

		String sql = "select * from contatos";

		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();

			List<Contato> contatos = new ArrayList<Contato>();

			while (rs.next()) {
				Contato contato = new Contato();
				contato.setNome(rs.getString("nome"));
				contato.setTelefone(rs.getString("telefone"));
				contato.setEndereco(rs.getString("endereco"));
				contato.setCep(rs.getString("cep"));
				contato.setMensagem(rs.getString("mensagem"));

				contatos.add(contato);

			}
			rs.close();
			stmt.close();
			return contatos;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}

	}

}
