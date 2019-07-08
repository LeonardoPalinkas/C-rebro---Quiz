//
//  dados.swift
//  HistoryBook
//
//  Created by leonardo palinkas on 04/07/19.
//  Copyright © 2019 leonardo palinkas. All rights reserved.
//

import Foundation


class DadosHistoria{
    
    static var shared = DadosHistoria()
    
    var perguntaKey = "perguntaGravada"
    
    var perguntasHistoria = [
        
        perguntaHistoria (imgPergunta: "hist - pergunta1", txtPergunta: "1. Quais cidades já foram capital do Brasil?", txtResposta: ["São Paulo e Ouro Preto", "Brasília e São Paulo", "Rio de Janeiro e Salvador", "Rio de Janeiro e Minas Gerais"], respostaCorreta: 2),
        perguntaHistoria (imgPergunta: "hist - pergunta2", txtPergunta: "2. Quando começou a Idade Média", txtResposta: ["476", "1000", "1453", "1789"], respostaCorreta: 0),
        perguntaHistoria (imgPergunta: "hist - pergunta3", txtPergunta: "3. Qual foi o último país da América do Sul a acabar com a escravidão?", txtResposta: ["Brasil", "Argentina", "Chile", "Uruguai"], respostaCorreta: 0),
        perguntaHistoria (imgPergunta: "hist - pergunta4", txtPergunta: "4. Qual desses fatos não aconteceu durante a Ditadura Militar no Brasil?", txtResposta: ["Lei de Segurança Nacional", "Massacre do Carandiru", "AI-5", "30º Congresso da UNE"], respostaCorreta: 1),
        perguntaHistoria (imgPergunta: "hist - pergunta5", txtPergunta: "5. Quais desses momentos da história do Brasil não aconteceu em São Paulo?", txtResposta: ["Semana de Arte Moderna de 1922", "Marcha da Família", "Morte de Getúlio Vargas", "Independência do Brasil"], respostaCorreta: 2),
        perguntaHistoria (imgPergunta: "hist - pergunta6", txtPergunta: "6. Desses paises, qual já tentou invadir o Brasil?", txtResposta: ["Venezuela", "Chile", "Itália", "Inglaterra"], respostaCorreta: 3),
        perguntaHistoria (imgPergunta: "hist - pergunta7", txtPergunta: "7. Qual desses nomes está associado à Guerra de Canudos?", txtResposta: ["Antônio Conselheiro", "Lampião", "Tiradentes", "Caetano Veloso"], respostaCorreta: 0),
        perguntaHistoria (imgPergunta: "hist - pergunta8", txtPergunta: "8. Quando aconteceu a Revolução Russa?", txtResposta: ["1877", "1917", "1945", "1984"], respostaCorreta: 1),
        perguntaHistoria (imgPergunta: "hist - pergunta8", txtPergunta: "9. Quantos anos durou a Guerra dos Cem Anos?", txtResposta: ["90 anos", "100 anos", "110 anos", "116 anos"], respostaCorreta: 3),
        perguntaHistoria (imgPergunta: "hist - pergunta8", txtPergunta: "10.Qual o nome do famoso riacho onde foi proclamado a independência do Brasil?", txtResposta: ["Plácido", " Tietê", "Ipiranga", " Dilúvio"], respostaCorreta: 2),
        perguntaHistoria (imgPergunta: "hist - pergunta8", txtPergunta: "11. Quem é o autor do Hino Nacional Brasileiro?", txtResposta: ["Castelo Branco", "Joaquim Silvério", "Joaquim Osório Duque Estrada", "Rui Barbosa"], respostaCorreta: 2),
        perguntaHistoria (imgPergunta: "hist - pergunta8", txtPergunta: "12. Quem é o autor do Hino Nacional Brasileiro?", txtResposta: ["Castelo Branco", "Joaquim Silvério", "Joaquim Osório Duque Estrada", "Rui Barbosa"], respostaCorreta: 2),
        perguntaHistoria (imgPergunta: "hist - pergunta8", txtPergunta: "13. Qual foi a famosa revolução ocorrida no Rio Grande do Sul?", txtResposta: ["Revolução Farroupilha", "Revolução dos Pampas", "Revolução Gaúcha", "Revolução do Mate verde"], respostaCorreta: 0),
        perguntaHistoria (imgPergunta: "hist - pergunta8", txtPergunta: "14. Quem descobriu o Brasil?", txtResposta: ["Cristóvão Colombo", "Pedro I", "Pedro Álvarez Cabral", " João VI"], respostaCorreta: 2),
        perguntaHistoria (imgPergunta: "hist - pergunta8", txtPergunta: "15. Quando foi proclamada a Independência do Brasil?", txtResposta: ["C15 de novembro de 1889", "12 de outubro de 1850", "11 de junho de 1890", " 7 de setembro de 1822"], respostaCorreta: 3),
        perguntaHistoria (imgPergunta: "hist - pergunta8", txtPergunta: "16. Qual é o nome da legislação brasileira responsável pela libertação dos escravos em 1888?", txtResposta: ["Lei Seca", "Lei Rósea", "Lei Aurea", "Lei do Ventre Livre"], respostaCorreta: 2),
        perguntaHistoria (imgPergunta: "hist - pergunta8", txtPergunta: "17. Qual o nome do primeiro presidente da república?", txtResposta: ["Mal. Deodoro da Fonseca", "Mal. Floriano Peixoto", "Duque de Caxias", " Rui Barbosa"], respostaCorreta: 0),
        perguntaHistoria (imgPergunta: "hist - pergunta8", txtPergunta: "18. Quando foi proclamada a república do Brasil?", txtResposta: ["15 de novembro de 1889", "25 de março de 1857", "14 de julho de 1789", " 12 de junho de 1840"], respostaCorreta: 0),
        perguntaHistoria (imgPergunta: "hist - pergunta8", txtPergunta: "19. De que ordem religiosa foram os primeiros catequista dos indígenas Brasileiros?", txtResposta: ["Franciscanos", "Jesuítas", "Beneditinos", "Carmelitas"], respostaCorreta: 0),
        perguntaHistoria (imgPergunta: "hist - pergunta8", txtPergunta: "20. Os Estados Unidos teve um Presidente que foi ator de Hollywood. Quem foi ele?", txtResposta: ["George W. Bush", "Barack Obama", "Ronald Reagan", "Jimmy Carter"], respostaCorreta: 2),
        perguntaHistoria (imgPergunta: "hist - pergunta8", txtPergunta: "21. Qual cientista famoso teve sua participação muito importante durante o processo de Independência dos Estados Unidos?", txtResposta: ["Thomas Edison", "Benjamin Franklin", "Isaac Newton", "John Dalton"], respostaCorreta: 1),
        perguntaHistoria (imgPergunta: "hist - pergunta8", txtPergunta: "22. Qual dos países abaixo presenteou os Estados Unidos com a famosa Estátua da Liberdade, por ter vencido uma batalha?", txtResposta: ["França", "Espanha", "Alemanha", "Inglaterra"], respostaCorreta: 0)
        
        
        
    ]
    
    var numeroRespondidoCorretamente = 0
    
    func respondeu(pergunta:perguntaHistoria, resposta:Int){
        if pergunta.respostaCorreta == resposta{
            numeroRespondidoCorretamente += 1
        }
    }
    
    var perguntaAtualHistoria: Int {
        didSet {
            UserDefaults.standard.set(self.perguntaAtualHistoria, forKey: perguntaKey)
        }
    }
    
    func resultado() -> (acertos:Int,  total:Int){
        
        return (acertos: numeroRespondidoCorretamente, total: perguntasHistoria.count)
    }
    
    func proximaPergunta(){
        perguntaAtualHistoria += 1
    }
    
    private init (){
        self.perguntaAtualHistoria = UserDefaults.standard.integer(forKey: perguntaKey)
    }
}

class DadosCiencia{
    
    static var shared = DadosCiencia()
    
    var perguntaKey = "perguntaGravada"
    
    var perguntasCiencias = [
        
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "1. Qual é o nome da galáxia em que se encontram a Terra e o nosso Sistema Solar?", txtResposta: ["Andrômeda", "Nuvem de Magalhães", "Via Láctea", "Nuvem de Oort"], respostaCorreta: 2),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "2. Como é medida a distância entre as galáxias?", txtResposta: ["milhões ou bilhões de KM", "milhões ou bilhões de anos-luz", "milhões de KM/h", "períodos orbitais"], respostaCorreta: 0),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "3. O que mantém unidos os planetas, estrelas e nebulosas de uma galáxia?", txtResposta: ["A força da gravidade", "A poeira cósmica", "  O peso, o volume e a massa", "Os buracos negros"], respostaCorreta: 0),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "4. QDe acordo com os seus diferentes formatos, como podem ser classificadas as galáxias?", txtResposta: ["Em elípticas, espirais e irregulares", "Em regulares e irregulares", "Em atômicas e subatômicas", "Em atômicas e subatômicas"], respostaCorreta: 0),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "5. As nanotecnologias lidam com artefatos construídos em escala de 1 a 100 nanômetros. Quanto mede um nanômetro?", txtResposta: ["Um centésimo de metro", "Um milésimo de metro", "Um milionésimo de metro", "Um bilionésimo de metro"], respostaCorreta: 3),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "6. Em que século as observações astronômicas de Galileu Galilei entraram em conflito com a Igreja católica?", txtResposta: ["Século 15", "Século 16", "Século 17", "Não houve conflito"], respostaCorreta: 2),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "7. Que avanço tecnológico foi essencial para a posterior invenção do telescópio com o qual Galileu fez suas descobertas?", txtResposta: ["Lentes convexas", "Lentes côncavas", "Lentes côncavas e convexas", "Lentes bicôncavas"], respostaCorreta: 2),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "8. Qual é o ovo dos mamíferos?", txtResposta: ["Centrolécito", "Telolécito", "Alécito", "Alicoide"], respostaCorreta: 2),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "9. Qual das alternativas abaixo não é um composto orgânico?", txtResposta: ["Lipídios", "Água", "Carboidratos", "Proteínas"], respostaCorreta: 1),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "10. Qual é a Vitamina e o sal mineral que estão presentes na coagulação do sangue?", txtResposta: ["Vitamina K e Cálcio", "Vitamina D Potássio", "Vitamina K e Cloro", "Vitamina C e Iodo"], respostaCorreta: 0),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "11. Quais são os períodos da intérfase?", txtResposta: ["Prófase, Anáfase e Telófase", "Gap1, Profásee e Metáfase", "Gap1 e Gap2 e síntese", "Anáfase ,Gap1 e Prófase"], respostaCorreta: 2),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "12. Qual é o tipo de ovo e segmentação das aves?", txtResposta: ["Telolécitos e meroblastica discoidal", "Heterolécito e holobástica igua", "Megalécito e meroblástica superficial", "Alécito e holoblástica igual"], respostaCorreta: 0),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "13. Uma doença muito comum na época em que os Portuguêses vieram para o Brasil foi o Escorbuto,que é causado pela carência de uma vitamina.Qual é essa vitamina?", txtResposta: ["Vitamina A", "Vitamina B1", "Vitamina C", "Vitamina D"], respostaCorreta: 2),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "14. Qual composto orgânico é a principal fonte de energia para os seres vivos?", txtResposta: ["Água", "Carboidratos", "Vitaminas", "Ácidos Nucleicos"], respostaCorreta: 1),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "15. Qual complexo embrionário é exclusivo dos mamíferos e é responsável pela nutrição do feto, pelas trocas gasosas e pelas eliminações de excretas?", txtResposta: ["Placenta", "Córion", "Alantoide", "Cordão umbilical"], respostaCorreta: 0),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "16. Qual é o nome do grupo de plantas mais primitivo da terra?", txtResposta: ["Briófitas", "Pteridófitas", "Gimnospermas", "Angiospermas"], respostaCorreta: 2),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "17. Como é chamado o caule horizontal da maioria das plantas pteridófitas?", txtResposta: ["Horitoma", "Rizoma", "Subterranoide", "Cauloide"], respostaCorreta: 1),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "18. Como são chamados os dois tipos de vasos vasculares existentes nas plantas?", txtResposta: ["xilema e atêmia", "xilema e cloroplasto", "xilema e floema", "xilema e veia"], respostaCorreta: 2),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "19. Quais dessa espécies são exemplos de briófitas (grupo de plantas)?", txtResposta: ["Laranjeira e mangueira", "Samambaia e pinheiro", "araucária e trigo", "Musgos e hepáticas"], respostaCorreta: 3),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "20. Qual dessa espécies é um exemplo de pteridófitas (grupo de plantas)?", txtResposta: ["samambaia", "musgo", "cacaueiro", "mandioca"], respostaCorreta: 0),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "21. De que grupo faz parte a ninfeia (planta)?", txtResposta: ["Briófitas", "Angiospermas", "Carotenoides", "Gimnospermas"], respostaCorreta: 1),
        perguntaCiencias (imgPergunta: "cie - pergunta 1", txtPergunta: "22. Quem propôs a ideia de que o Sol é o centro do Sistema Solar, mais tarde provada por Galileu?", txtResposta: ["Ptolomeu", "Nicolau Copérnico", "Tycho Brahe", "Isaac Newton"], respostaCorreta: 1)

        
        
    ]
    
    var numeroRespondidoCorretamente = 0
    
    func respondeu(pergunta:perguntaCiencias, resposta:Int){
        if pergunta.respostaCorreta == resposta{
            numeroRespondidoCorretamente += 1
            }
        }
    
    var perguntaAtualCiencias: Int {
        didSet {
            UserDefaults.standard.set(self.perguntaAtualCiencias, forKey: perguntaKey)
        }
    }
    
    func resultado() -> (acertos2:Int,  total2:Int){
        
        return (acertos2: numeroRespondidoCorretamente, total2: perguntasCiencias.count)
    }
    
    func proximaPergunta(){
        perguntaAtualCiencias += 1
    }
    
    private init (){
        self.perguntaAtualCiencias = UserDefaults.standard.integer(forKey: perguntaKey)
    }
}


//commit
