//
//  APIService.swift
//  App_SwiftUI
//
//  Created by user270446 on 11/23/24.
//
import Alamofire
import Foundation

struct APIService {
    
 func getOptions(completion: @escaping ([OptionType]?, Error?)-> Void){
     AF.request("https://private-685bcd-ayslancontiserafinicosta.apiary-mock.com/options").responseDecodable(of:[OptionType].self){
        response in switch response.result{
            case .success(let options):
                completion(options, nil)
            default: break
            }
        }
 }

func postOption(_ option: OptionType, completion: @escaping (Bool, Error?) -> Void) {
    let url = "https://private-685bcd-ayslancontiserafinicosta.apiary-mock.com/options"
    
    let parameters: [String: Any] = [
        "icone": option.icone,
        "titulo": option.titulo,
        "descricao": option.descricao
    ]
  
    AF.request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default)
        .response { response in
            if let data = response.data {
                if let jsonResponse = try? JSONSerialization.jsonObject(with: data, options: []) {
                    print("Resposta da API: \(jsonResponse)")
                }
            }
            switch response.result {
            case .success(let createdOption):
                print("Opção criada: \(createdOption)")
                completion(true, nil)
            case .failure(let error):
                print("Erro ao criar opção: \(error)")
                completion(false, error)
            }
        }

}



    
}
