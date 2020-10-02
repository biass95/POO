/*
 * A data serve para  manipular uma data de forma simples e didatica.
 */
package br.edu.fatecpg.poo;

/**
 *Classe Data com dia, mês e ano, construtores, getters e setters
 * @author biancasobral
 */
public class Data {
    private int dia; 
    private int mes;
    private int ano;
    
    
    // Construtor parametrizado
    public Data (int dia, int mes, int ano) {
        this.dia = dia;
        this.mes = mes;
        this.ano = ano;
    }
    
    //construtor sem parametro
    public Data () {
    }
    
    //construtor alternativo
    public Data (int dia, int mes) {
        this.dia = dia;
        this.mes = mes;
    } 
    
    // uma getter para Data que retorna uma data formatada 
    public String getData() {
        String out = "";
        if (dia <10) {
        out+= "0";
        out+= dia + "/";
        } if (mes < 10) {
        out+= "0";
        out+= mes + "/"; 
        out += ano;
        }
        return out;
    }
    
    
    //getter para retornar imprimir o return do atributo dia
    public int getDia() {
        return dia;
    }
    
    //setter para "setar" uma entrada de dia
    public void setDia(int dia) {
        this.dia = dia;
    }
    
    //getter para retornar imprimir o return do atributo mes
    public int getMes() {
        return mes;
    }
    
    //setter para "setar" uma entrada de mes
    public void setMes(int mes) {
        this.mes = mes;
    }

    //getter para retornar imprimir o return do atributo ano
    public int getAno() {
        return ano;
    }
    
    //setter para "setar" uma entrada de ano
    public void setAno(int ano) {
        this.ano = ano;
    }
    
    
}
