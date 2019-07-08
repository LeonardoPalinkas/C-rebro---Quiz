//
//  perguntas.swift
//  HistoryBook
//
//  Created by leonardo palinkas on 04/07/19.
//  Copyright © 2019 leonardo palinkas. All rights reserved.
//

import Foundation
import UIKit

class perguntaHistoria {
    internal init(imgPergunta: String, txtPergunta: String, txtResposta: [String], respostaCorreta: Int) {
        self.imgPergunta = imgPergunta
        self.txtPergunta = txtPergunta
        self.txtResposta = txtResposta
        self.respostaCorreta = respostaCorreta
    }
    
    var imgPergunta: String
    var txtPergunta: String
    var txtResposta: [String]
    var respostaCorreta:Int
    
}

class perguntaCiencias {
    internal init(imgPergunta: String, txtPergunta: String, txtResposta: [String], respostaCorreta: Int) {
        self.imgPergunta = imgPergunta
        self.txtPergunta = txtPergunta
        self.txtResposta = txtResposta
        self.respostaCorreta = respostaCorreta
    }
    
    var imgPergunta: String
    var txtPergunta: String
    var txtResposta: [String]
    var respostaCorreta:Int
    
}

class perguntaTecnologia {
    internal init(imgPergunta: String, txtPergunta: String, txtResposta: [String], respostaCorreta: Int) {
        self.imgPergunta = imgPergunta
        self.txtPergunta = txtPergunta
        self.txtResposta = txtResposta
        self.respostaCorreta = respostaCorreta
    }
    
    var imgPergunta: String
    var txtPergunta: String
    var txtResposta: [String]
    var respostaCorreta:Int
    
}
