//
//  MaisQuestoesViewController.swift
//  HistoryBook
//
//  Created by leonardo palinkas on 05/07/19.
//  Copyright © 2019 leonardo palinkas. All rights reserved.
//

import UIKit

class MaisQuestoesViewController: UIViewController {

    @IBOutlet weak var acerto2: UILabel!
    @IBOutlet weak var total2: UILabel!
    @IBOutlet weak var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let resultadoFinal = DadosCiencia.shared.resultado()
        total2.text = String(resultadoFinal.total2)
        acerto2.text = String(resultadoFinal.acertos2)

    }
    @IBAction func reset(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        DadosCiencia.shared.perguntaAtualCiencias = 0
        DadosCiencia.shared.numeroRespondidoCorretamente = 0
        
        
        
    }
}
