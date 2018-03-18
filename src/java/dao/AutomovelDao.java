//Arthur Lourenço Terra
//Lucas de Almeida Paula
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.Automovel;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Arthur
 */
public class AutomovelDao {
    private static ArrayList<Automovel> lista = null;
    public static int quantidade = 0;
    
    public AutomovelDao(){
        lista = new ArrayList<Automovel>();
    }
    
    public void adicionarAutomovel(Automovel a){
        lista.add(a);
        quantidade += a.getEstoque();
    }
    
    public void removerAutomovel(Automovel a){
        lista.remove(a);
        quantidade -= a.getEstoque();
    }
    
    public Automovel consultaAutomovel(int chassi){
        for(Automovel a: lista){
            if(a.getChassi() == chassi)
                return a;
        }
        
        return null;
        }
    
    /*public void alterarAutomovel(Automovel a){
        Automovel auto = consultaAutomovel(a.getChassi());
        int id = lista.indexOf(auto);
        lista.set(id, a);
        /*if(prod != null){
            lista.remove(prod);
            lista.add(p);
        }
            
    }
    */
    public ArrayList<Automovel> todosAutomoveis(){
        return lista;
    }
    
}
