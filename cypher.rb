  def cypher(word= "missing word",key=0)
    letters = {a:1,b:2,c:3,d:4,e:5,f:6,g:7,h:8,i:9,j:10,k:11,l:12,m:13,n:14,o:15,p:16,q:17,r:18,s:19,t:20,u:21,v:22,w:23,x:24,y:25,z:26
    }
    word = word.downcase.split("")
  new_word = []
    word.map do |letter|
      letter = letter.to_sym
    
      if letters.key?(letter)
        letter = (letters[letter] + key)%26
        #invert hash to find the letter to shift wih the new value
        values = letters.invert
    
    new_word << values[letter]
        new_word.map!{ |symbol| symbol.to_s }
        
      end
      
    end
    new_word =  new_word.join()
    puts new_word
    return new_word
  end
  def decypher(word= "missing word",key=0)
    letters = {a:1,b:2,c:3,d:4,e:5,f:6,g:7,h:8,i:9,j:10,k:11,l:12,m:13,n:14,o:15,p:16,q:17,r:18,s:19,t:20,u:21,v:22,w:23,x:24,y:25,z:26
    }
    word = word.downcase.split("")
    new_word = []
      word.map do |letter|
      letter = letter.to_sym

      if letters.key?(letter)
        letter = (letters[letter] - key)%26
        #invert hash to find the letter to shift wih the new value
        values = letters.invert

    new_word << values[letter]
        new_word.map!{ |symbol| symbol.to_s }

      end

    end
    new_word =  new_word.join()
    puts new_word
    
  end
cypher("este mensaje esta cifrado",5)
decypher(cypher("este mensaje esta cifrado",5),5)