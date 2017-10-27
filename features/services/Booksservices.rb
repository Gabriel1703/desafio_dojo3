#language: pt 
#utf-8


class BookServices
	include HTTParty

	base_uri $ambiente['url']
	format :json


	def criar_book(body)
		self.class.post('/api/Books', :body => body.to_json, :headers => {'Content-Type' => 'application/json'})
	end

	def buscar_book(id=nil)
		self.class.get("/api/Books/#{id}")
	end

	def alterar_book(body,id)
		self.class.put('/api/Books/'+id, :body => body.to_json, :headers => {'Content-Type' => 'application/json'})
	end	

end


