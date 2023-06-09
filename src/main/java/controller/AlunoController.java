package controller;

import java.sql.SQLException;
import java.util.List;

import model.Aluno;
import services.AlunoService;
import services.imp.AlunoServiceImp;

public class AlunoController {
    AlunoService alunoservice = new AlunoServiceImp();

    public void cadastrar(Aluno aluno) throws Exception {
        if (aluno.getNome().equals(null)) {
            throw new Exception("Nome embranco!");
        }

        if (aluno.getEmail().equals(null)) {
            throw new Exception("E-mail embranco!");
        } else if (aluno.getEmail().indexOf("@") == -1
                || aluno.getEmail().indexOf(".") == -1) {
            throw new Exception("E-mail invalida!");
        }

        if (aluno.getSenha().equals(null)) {
            throw new Exception("Senha embranco!");
        } else if (aluno.getEmail().length() < 8) {
            throw new Exception("Senha invalida!");
        }

        // if (aluno.getDataNasc().equals(null)) {
        // throw new Exception("Data de nascimento embranco!");
        // }

        if (aluno.getId().equals(null) || aluno.getId().equals("")) {
            alunoservice.add(aluno);
        } else {
            alunoservice.update(aluno);
        }
    }

    public List<Aluno> list() throws SQLException {
        // AlunoService alunoservice = new AlunoService();
        List<Aluno> alunos = alunoservice.get();
        return alunos;
    }

    public Aluno get(String id) throws SQLException {
        // AlunoService alunoservice = new AlunoService();
        return alunoservice.get(id);
    }

    public void remove(Aluno aluno) throws Exception {
        // AlunoService alunoservice = new AlunoService();
        alunoservice.delete(aluno.getId());
    }
}
