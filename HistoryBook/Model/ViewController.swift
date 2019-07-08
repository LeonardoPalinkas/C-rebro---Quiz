//
//  ViewController.swift
//  HistoryBook
//
//  Created by leonardo palinkas on 03/07/19.
//  Copyright © 2019 leonardo palinkas. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var imgPergunta: UIImageView!
    @IBOutlet weak var txtPergunta: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var proximaPergunta: UIButton!
    @IBOutlet var button: [UIButton]!
    var respondido:  Bool = false
    
    @IBOutlet weak var imgTutorial: UIImageView!
    @IBOutlet weak var txtTutorial: UILabel!
    @IBOutlet weak var buttonTutorial: UIButton!
    @IBOutlet weak var viewTutorial: UIView!
    @IBOutlet weak var fundoTutorial: UIImageView!
    
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var acertos: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if DadosHistoria.shared.perguntaAtualHistoria >= DadosHistoria.shared.perguntasHistoria.count - 1{
            if let vC =
                storyboard?.instantiateViewController(withIdentifier: "maisQuestoes2") as? MaisQuestoes2ViewController{
                self.navigationController?.show (vC, sender: self)
            }
            return
        }
        
        let perguntaAtual = DadosHistoria.shared.perguntasHistoria[DadosHistoria.shared.perguntaAtualHistoria]
        
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
            b.setBackgroundImage(UIImage(named: "hist pergunta"), for: .normal)
            b.alpha = 1
        }
        
        let resultadoFinal = DadosHistoria.shared.resultado()
        total.text = String(resultadoFinal.total)
        acertos.text = String(resultadoFinal.acertos)


    }
    
    @IBAction func tutorial(_ sender: Any) {
        imgTutorial.alpha = 0
        txtTutorial.alpha = 0
        viewTutorial.alpha = 0
        buttonTutorial.alpha = 0
        buttonTutorial.isEnabled = false
        fundoTutorial.alpha = 0
    }
    
    
    @IBAction func respostaApertada(_ sender: UIButton) {
        
        if !respondido{
            let perguntaAtual = DadosHistoria.shared.perguntasHistoria[DadosHistoria.shared.perguntaAtualHistoria]
            
            
            for b in self.button {
                if b.tag == perguntaAtual.respostaCorreta {
                    b.setBackgroundImage(UIImage(named: "hist - resposta certa"), for: .normal)
                }
                else {
                    b.setBackgroundImage(UIImage(named: "hist pergunta"), for: .normal)
                    b.alpha = 0.5
                }
            }
            
            if sender.tag != perguntaAtual.respostaCorreta {
                sender.setBackgroundImage(UIImage(named: "hist - resposta errada"), for: .normal)
                sender.alpha = 1
            }
            
            proximaPergunta.alpha = 1
            proximaPergunta.isEnabled = true
            
            
            respondido = true
            DadosHistoria.shared.respondeu(pergunta: perguntaAtual, resposta: sender.tag)
            print(DadosHistoria.shared.resultado())
            
        }
    }
    
    
    @IBAction func proxima(_ sender: Any) {

        print(DadosHistoria.shared.perguntaAtualHistoria)
        
        if DadosHistoria.shared.perguntaAtualHistoria >= DadosHistoria.shared.perguntasHistoria.count - 1 {
            if let vC =
                storyboard?.instantiateViewController(withIdentifier: "maisQuestoes2") as? MaisQuestoes2ViewController{
                self.navigationController?.show (vC, sender: self)
            }
            return
        }
        
            DadosHistoria.shared.proximaPergunta()
            respondido = false
            
            let perguntaAtual = DadosHistoria.shared.perguntasHistoria[DadosHistoria.shared.perguntaAtualHistoria]
            imgPergunta.image = UIImage(named: perguntaAtual.imgPergunta)
            txtPergunta.text = perguntaAtual.txtPergunta
            
            button1.setTitle(perguntaAtual.txtResposta[0], for: .normal)
            button2.setTitle(perguntaAtual.txtResposta[1], for: .normal)
            button3.setTitle(perguntaAtual.txtResposta[2], for: .normal)
            button4.setTitle(perguntaAtual.txtResposta[3], for: .normal)
            
            proximaPergunta.alpha = 0
            proximaPergunta.isEnabled = false
        
        
            
            for b in self.button {
                b.setBackgroundImage(UIImage(named: "hist pergunta"), for: .normal)
                b.alpha = 1
            }
        
        
        let resultadoFinal = DadosHistoria.shared.resultado()
        total.text = String(resultadoFinal.total)
        acertos.text = String(resultadoFinal.acertos)

            
            
        }
    }
