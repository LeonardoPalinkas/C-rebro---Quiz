//
//  MaisQuestoes2ViewController.swift
//  HistoryBook
//
//  Created by leonardo palinkas on 05/07/19.
//  Copyright © 2019 leonardo palinkas. All rights reserved.
//

import UIKit

class MaisQuestoes2ViewController: UIViewController {

    @IBOutlet weak var acerto: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var button2: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let resultadoFinal = DadosHistoria.shared.resultado()
        total.text = String(resultadoFinal.total)
        acerto.text = String(resultadoFinal.acertos)

    }
    @IBAction func reset2(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        DadosHistoria.shared.perguntaAtualHistoria = 0
        DadosHistoria.shared.numeroRespondidoCorretamente = 0
    }
    
}
