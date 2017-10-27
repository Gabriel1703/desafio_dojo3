#language: pt 
#utf-8

#Criar
Quando("cadastrar um novo book no site.") do
  @resposta = BookServices.new.criar_book($massa['criar_book'])
  puts "ID:"+ @resposta['ID'].to_s, "Title:" + @resposta['Title'].to_s, "Description:" + @resposta['Description'].to_s,
  "PageCount:"+ @resposta['PageCount'].to_s, "Excerpt:"+ @resposta['Excerpt'].to_s, "PublishDate:"+ @resposta['PublishDate'].to_s
end

Então("o status code da resposta será {int}") do |int|
	expect(@resposta.code).to eq(200)  
end

#Buscar
Quando("buscar um book pelo id {string} no site através do service") do |string|
   @resposta = BookServices.new.buscar_book(string.to_i)
   puts 'ID:'+ @resposta['ID'].to_s, "Title:"+ @resposta['Title'].to_s,"Description:" + @resposta['Description'][0..20].to_s,
   "PageCount:"+ @resposta['PageCount'].to_s, "Excerpt:"+ @resposta['Excerpt'][0..30].to_s, "PublishDate:" + @resposta['PublishDate'].to_s
end

Então("o status code da resposta será mensagem {int}") do |int|               
    expect(@resposta.code).to eq(200)
end                                                                           

#Alterar
Quando("fizer a alteração em um livro para corrigir um trecho especifico") do
	antes = BookServices.new.buscar_book($massa['buscar_book']['ID'].to_s)
	puts "Excerpt antes de alterar:" + antes['Excerpt'][0..30].to_s
    @resposta = BookServices.new.alterar_book($massa['alterar_book'], $massa['buscar_book']['ID'].to_s)
    puts "Excerpt alterado para:"+ @resposta['Excerpt'].to_s  
end

Então("valido o codigo de resposta que será {int} para alteração esperado") do |int|
	expect(@resposta.code).to eq(200)
end