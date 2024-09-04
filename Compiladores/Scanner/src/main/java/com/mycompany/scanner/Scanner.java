/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.scanner;


import java.io.InputStream;
import java.io.IOException;
/**
 *
 * @author gvalm
 */
public class Scanner {

    InputStream in;
    boolean back;
    char currentChar;
    boolean error;
    StringBuffer tokenString; // Strings mutáveis
    
    public Scanner (InputStream i)
    {
        this.in = i;
        back = false;
    }
    
    private boolean nextChar() throws IOException {
        if(!back)
        {
            currentChar = (char) in.read(); // Se for True, ler caractere
            
        }
        tokenString.append(currentChar); // Adiciona atual caracter em tokenString
        back = false;
        return true;
    }
    
    public void cleartokenString()
    {
        tokenString.deleteCharAt(tokenString.length() - 1); // Limpa o token
    }
    
    public void setBack(){
        back = true;
        cleartokenString();
    }
    
    public Token lex(){
     
        
        int state;
        tokenString = new StringBuffer();
        
        error = false;
        state = 0;
        
        try{
            while(!error)
            {
                switch (state) {
                case 0:
                    nextChar();
                    if (Character.isLetter(currentChar))
                        state = 1;
                    else if (Character.isDigit(currentChar))
                        state = 3;
                    else if (currentChar == '>')
                        state = 5;
                    else if (currentChar == '<')
                        state = 8;
                    else if (currentChar == '(')
                        return new Token(TokenType.PARABERTO, tokenString.toString());
                    else if (currentChar == ')')
                        return new Token(TokenType.PARFECHADO, tokenString.toString());
                       else if (   (currentChar == ' '  || 
	        		    currentChar == '\n' ||
	        		    currentChar == '\t' ||
	        		    currentChar == '\r') )
                           
                        cleartokenString();

                    else
                        error = true;
                    break;      
                
                case 1:
                    nextChar();
                    if(!Character.isLetterOrDigit(currentChar))
                        state = 2;
                    break;
                case 2:
                    setBack();
                    
                     for (KeywordType keyword : KeywordType.values()) {
                        if (keyword.getKeyword().equals(tokenString.toString())) {
                            return new Token(TokenType.KEYWORD, tokenString.toString()); 
                        }
                     }
                     
                    nextChar(); // Cheirinho de gambiarra resolver dps
                    state = 11;
                    break;
   
                    
                    
                case 3:
                    nextChar();
                    if(!Character.isDigit(currentChar));
                        state = 4;
                    break;    
                case 4: setBack();
                    return new Token(TokenType.INTCONST, tokenString.toString());
                
                case 5: nextChar();
                    if(currentChar == '=')
                        state = 6;
                    else state = 7;
                    break;
                case 6: return new Token(TokenType.MENORIGUAL, tokenString.toString());
                
                case 7: setBack();
                    return new Token(TokenType.MENOR, tokenString.toString());
                case 8: nextChar();
                    if(currentChar == '=')
                        state = 9;
                    else state = 10;
                    break;
                case 9: return new Token(TokenType.MAIORIGUAL, tokenString.toString());
                
                case 10: setBack();
                    return new Token(TokenType.MAIOR, tokenString.toString());
                
                case 11: ; // Verifica se é identificador (mas primeiro ve se é palavra chave no status 2)
                    return new Token(TokenType.IDENT, tokenString.toString());

   
                default: error = true;
                
                }
            } 
            return null;
        } catch(IOException e )
        {
            return null;
        }
                
    }
}
