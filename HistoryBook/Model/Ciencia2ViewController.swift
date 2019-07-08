//
//  Ciencia2ViewController.swift
//  HistoryBook
//
//  Created by leonardo palinkas on 04/07/19.
//  Copyright © 2019 leonardo palinkas. All rights reserved.
//

import UIKit

class Ciencia2ViewController: UIViewController {

    @IBOutlet weak var imgPergunta: UIImageView!
    @IBOutlet weak var txtPergunta: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var proximaPergunta: UIButton!
    @IBOutlet var button: [UIButton]!
    var respondido:  Bool = false
    
    @IBOutlet weak var acerto2: UILabel!
    @IBOutlet weak var total2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if DadosCiencia.shared.perguntaAtualCiencias >= DadosCiencia.shared.perguntasCiencias.count - 1{
            if let vC =
                storyboard?.instantiateViewController(withIdentifier: "maisQuestoes") as? MaisQuestoesViewController{
                self.navigationController?.show (vC, sender: self)
            }
            return
        }
        
        let perguntaAtual = DadosCiencia.shared.perguntasCiencias[DadosCiencia.shared.perguntaAtualCiencias]
        
        imgPergunta.image = UIImage(named: perguntaAtual.imgPergunta)
        txtPergunta.text = perguntaAtual.txtPergunta
        
        button1.setTitle(perguntaAtual.txtResposta[0], for: .normal)
        button2.setTitle(perguntaAtual.txtResposta[1], for: .normal)
        button3.setTitle(perguntaAtual.txtResposta[2], for: .normal)
        button4.setTitle(perguntaAtual.txtResposta[3], for: .normal)
        respondido = false
        
        proximaPergunta.alpha = 0
        proximaPergunta.isEnabled = false
    
        for b in self.button {
            b.setBackgroundImage(UIImage(named: "cie - pergunta"), for: .normal)
            b.alpha = 1
        }
        
        let resultadoFinal = DadosCiencia.shared.resultado()
        total2.text = String(resultadoFinal.total2)
        acerto2.text = String(resultadoFinal.acertos2)
        
    }
  
    @IBAction func pressionadoCiencia(_ sender: UIButton) {
        
        
        if !respondido{
            let perguntaAtual = DadosCiencia.shared.perguntasCiencias[DadosCiencia.shared.perguntaAtualCiencias]
            
            
            for b in self.button {
                if b.tag == perguntaAtual.respostaCorreta {
                    b.setBackgroundImage(UIImage(named: "cien - resposta certa"), for: .normal)
                }
                else {
                    b.setBackgroundImage(UIImage(named: "cie - pergunta"), for: .normal)
                    b.alpha = 0.5
                }
            }
            
            if sender.tag != perguntaAtual.respostaCorreta {
                sender.setBackgroundImage(UIImage(named: "cien - resposta errada"), for: .normal)
                sender.alpha = 1
            }
            
            proximaPergunta.alpha = 1
            proximaPergunta.isEnabled = true
           
            respondido = true
            DadosCiencia.shared.respondeu(pergunta: perguntaAtual, resposta: sender.tag)
            print(DadosCiencia.shared.resultado())
            
        }
    }
    
    @IBAction func proximaCiencia(_ sender: Any) {
        
        print(DadosCiencia.shared.perguntaAtualCiencias)
        
        if DadosCiencia.shared.perguntaAtualCiencias >= DadosCiencia.shared.perguntasCiencias.count - 1 {
            if let vC =
                storyboard?.instantiateViewController(withIdentifier: "maisQuestoes") as? MaisQuestoesViewController{
                self.navigationController?.show (vC, sender: self)
            }
            return
        }
        
        DadosCiencia.shared.proximaPergunta()
        
        respondido = false
        
        let perguntaAtual = DadosCiencia.shared.perguntasCiencias[DadosCiencia.shared.perguntaAtualCiencias]
        imgPergunta.image = UIImage(named: perguntaAtual.imgPergunta)
        txtPergunta.text = perguntaAtual.txtPergunta
        
        button1.setTitle(perguntaAtual.txtResposta[0], for: .normal)
        button2.setTitle(perguntaAtual.txtResposta[1], for: .normal)
        button3.setTitle(perguntaAtual.txtResposta[2], for: .normal)
        button4.setTitle(perguntaAtual.txtResposta[3], for: .normal)
        
        proximaPergunta.alpha = 0
        proximaPergunta.isEnabled = false
        
        for b in self.button {
            b.setBackgroundImage(UIImage(named: "cie - pergunta"), for: .normal)
            b.alpha = 1
        }
        
        let resultadoFinal = DadosCiencia.shared.resultado()
        total2.text = String(resultadoFinal.total2)
        acerto2.text = String(resultadoFinal.acertos2)
        
      }
    }


//commit

