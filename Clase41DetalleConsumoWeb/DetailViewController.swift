//
//  DetailViewController.swift
//  Clase41DetalleConsumoWeb
//
//  Created by Escurra Colquis on 18/12/24.
//

import UIKit //importamos la librería
import AlamofireImage //importamos la librería

class DetailViewController: UIViewController {
    @IBOutlet weak var detailImageView: UIImageView! // imagen
    @IBOutlet weak var nameDetailLabel: UILabel! // nombre
    
    var recipeDetail: RecipeResponse? //para mostrar el detalle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if recipeDetail != nil { //recipeDetail es diferente de nulo, es decir que sea opcional
            nameDetailLabel.text = recipeDetail?.recipeName //pasarle el detalle del nombre al label del nombre
            if let url = URL(string: recipeDetail?.urlPhoto ?? "") { //validar la url del detalle
                detailImageView?.af.setImage(withURL: url) //setearle la url de la imagen al imageView
                detailImageView?.contentMode = .scaleToFill //para que no sea tan estirado la foto de la receta
                detailImageView?.layer.shadowOffset = CGSize.zero //el detailImageView para que ocupe la posición 0
                detailImageView?.layer.shadowRadius = 1 //el detailImageView tenga una sombra con tamaño 1
                detailImageView?.layer.shadowOpacity = 1 //el detailImageView tenga una opacidad de 1
                detailImageView?.layer.cornerRadius = 40 //le ponemos de tamaño 20 al círculo de la receta
            }
        }
    }
}
