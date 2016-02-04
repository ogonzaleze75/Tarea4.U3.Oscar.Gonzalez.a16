//
//  Tarea4_U3_Oscar_Gonzalez_a16Tests.swift
//  Tarea4.U3.Oscar.Gonzalez.a16Tests
//
//  Created by Oscar on 03-02-16.
//  Copyright © 2016 Oscar. All rights reserved.
//

import XCTest

import UIKit

import Tarea4_U3_Oscar_Gonzalez_a16

@testable import Tarea4_U3_Oscar_Gonzalez_a16

class Tarea4_U3_Oscar_Gonzalez_a16Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        //1era Prueba enviando usuario correcto.
        XCTAssertEqual(User(use:"Oscar",pssw:"abcd").getUser(),"Oscar","Prueba de Usuario")
        //2era Prueba enviando usuario incorrecto.
        //XCTAssertEqual(User(use:"Oscar",pssw:"abcd").getUser(),"Sofia","Prueba de Usuario")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            var users=[User]()
            var aux=[User]()
            var a=0
            var b=1
            let totReg=10
            //Se genera un listdo de los usuarios en forma desordenada
            users+=[User(use:"Oscar",pssw:"ab"),User(use:"Sofia",pssw:"bc"),User(use:"Victor",pssw:"ad"),User(use:"Tere",pssw:"ac"),
                User(use:"Tomas",pssw:"ad"),User(use:"German",pssw:"ba"),User(use:"Octavio",pssw:"bb"),User(use:"Leonel",pssw:"bd"),
                User(use:"Matias",pssw:"ca"),User(use:"Josefa",pssw:"cb")]
            //Se inicia proceso del Arreglo auxiliar
            aux+=[User(use:"",pssw:"")]
            //se selecciona el Algoritmo de Ordenamiento de Inserción.
            
            while(a<totReg){
                aux[0]=users[a]
                
                b=a-1
                while(b>=0 && users[b].getUser()>aux[0].getUser()){
                    users[b+1]=users[b]
                    b--
                }
                users[b+1]=aux[0]
                a++
            }
            //Se procede a mostrar los datos Ordenados
            print("Lista Ordenada de Vendedores\n")
            print("############################\n")
            for u in users{
                print(u.getUser() + "\n")
            }
            
            // Put the code you want to measure the time of here.
        }
    
 }
}