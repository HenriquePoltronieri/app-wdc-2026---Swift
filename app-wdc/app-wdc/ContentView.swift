
import SwiftUI

struct Tarefa {
    let titulo: String
    let conteudo: String
    let data: Date
}


struct ContentView: View { 
    @State private var tarefas: [Tarefa] = []
    @State private var titulo: String = ""
    @State private var conteudo: String = ""
    
    func addTarefa(){
        self.tarefas.append(
            Tarefa(
                titulo: titulo,
                conteudo: conteudo,
                data: Date()
            )
        )
    }
    
    
    var body: some View {
        VStack {
            
            TextField("Titulo", text: $titulo)
                .padding()
                .background(Color.gray)
            
            Button("Criar tarefa") {
                addTarefa()
            }
            
            List {
                ForEach(tarefas, id: \.titulo) { value in
                    VStack(alingment:.leading) {
                        Text ("Tarefa 1")
                            .font(.title)
                        Text ("Data: \(value.data.formatted(date: abbreviated, time: .shortened))")
                            .padding(5)
                            .font(.caption)
                            .padding(.bottom, 24)
                        Text (value.conteudo)
                            .font(.subheadline)
                    }
                }
            }
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
    

