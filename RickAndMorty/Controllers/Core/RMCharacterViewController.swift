//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Илья on 22.01.2023.
//

import UIKit

/// Contoller to show and search for Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        RMService.shared.execute(.listCharactersRequest,
                                 expecting: RMGetAllCharactetsResponce.self) { result in
            switch result {
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
        }
        
    }
    
}
