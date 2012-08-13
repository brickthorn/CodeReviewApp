module CodeSubmissionsHelper

	def code_languages
	code_languages =	[
			["Groovy", "groovy"],
			["Python", "python"], 
			["C/C++", "c_cpp"], 
			["Lua", "lua"], 
			["Ruby","ruby"], 
			["Clojure", "clojure"],  
			["HTML", "html"],     
			["XML", "xml"], 
			["CoffeeScript", "coffee"],   
			["Java", "java"],
			["Markdown", "markdown"], 
			["Scala", "scala"],  	
			["JavaScript", "javascript"], 
			["YAML", "yaml"],		
			["C#", "csharp"],   
			["PERL", "perl"], 
			["CSS", "css"], 
			["SQL", "sql"], 
			["PHP",	"php"], 
			["Golang", "golang"]
		]

	code_languages.sort
	end
end
