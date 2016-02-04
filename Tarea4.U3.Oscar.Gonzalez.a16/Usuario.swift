//
//  Usuario.swift
//  Tarea4.U3.Oscar.Gonzalez.a16
//
//  Created by Oscar on 03-02-16.
//  Copyright © 2016 Oscar. All rights reserved.
//

import Foundation

public class User{
    private var usear:String
    private var passw:String
    
    public init(use:String,pssw:String)
    {
        self.usear=use
        self.passw=pssw
    }
    //Creamos el método de getUser para obtener el usuario
    public func getUser()->String{
        return usear
    }
    //Creamos el método de getPass para obtener la contraseña del vendedor
    public func getPass()->String{
        return passw
    }
    public func setUser(use: String)
    {
        self.usear=use
    }
    public func setPass(pssw:String)
    {
        self.passw=pssw
    }
    
}