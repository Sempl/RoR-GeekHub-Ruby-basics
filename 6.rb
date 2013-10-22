class Pet
	def initialize name
		@name = name
		@hp = 100
		@moodVar = ['sad','normal','happy']
		@mood = @moodVar[2] #nastroenie
		@stuffInBelly = 10  # sutost'(sut)
		@asleep = false  #son
		@care = 5  #vnimanie, laski
		@purity = 5 #4istui
		@angry = 2 #zlost'
		@mind = 5  #znanie, vospitannost'
		@t0 = Time.new.to_i
		puts @name +' rodilsya. '
	
	end

	def feed
		@t1 = Time.new.to_i
		puts @t1
    	if @asleep and (@t1 - @t0)<15 
    		puts 'Pitomec spit! ly4we ego ne bydit'
    	else
    		puts 'Вы кормите ' + @name + '(а).'
    		@stuffInBelly += 10
			@mood = @moodVar[2]
			@hp = @hp+10
   			passageOfTime
   		end
  	end
 	def play
 	@t1 = Time.new.to_i
    	if @asleep or @t0-@t1 <15 
    		puts 'Pitomec spit! ly4we ego ne bydit'
    	else
			puts 'Вы гулzаете s ' + @name 
			@care = @care +1
			@angry = @angry -1
			@purity = @purity + 1
			@stuffInBelly = @stuffInBelly -1
			@mood = @moodVar[2]
   			passageOfTime
   		end
	end	
	
	def wash
		@t1 = Time.new.to_i
    	if @asleep or @t0-@t1 <15 
    		puts 'Pitomec spit! ly4we ego ne bydit'
    	else
			puts 'Vu moete '+ @name +'(a)'
			@care = @care + 1
			@purity = 5	
			@mood = @moodVar[2]
			passageOfTime
		end
	end
	
	def abuse #rygat'
		@t1 = Time.new.to_i
		if @asleep or @t0-@t1 <15 
	    	puts 'Pitomec spit! ly4we ego ne bydit'
    	else
			@mood = @moodVar[1]
			@angry = @angry + 1
			@mind = @mind +1
			@care = @care+1
			passageOfTime
		end
	end
	
	def putToBed
		@t1 = Time.new.to_i
    	if @asleep or @t0-@t1 <15 
    		puts 'Pitomec yzhe spit! ly4we ego ne bydit'
    	else
			puts 'Вы укладываете ' + @name + '(а) спать.'
			@asleep = true
			@t0 = Time.new.to-i
			3.times do
			if @asleep
				passageOfTime
			end
			if @asleep
				puts @name + ' храпит, наполняя комнату дымом.'
			end
			end
		end
	end
	
	def rock
		@t1 = Time.new.to_i
    	if @asleep or @t0-@t1 <15 
    		puts 'Pitomec spit! ly4we ego ne bydit'
    	else
			puts 'Вы нежно укачиваете ' + @name + '(а).'
			@asleep = true
			@mood = @moodVar[2]
			@care = @care +1
			puts 'Он быстро задрёмывает...'
			passageOfTime
			if @asleep
				@asleep = false
				puts '...но просыпается, как только вы перестали качать.'
			end
		end
    end
    
    def educate
    	@t1 = Time.new.to_i
    	if @asleep or @t0-@t1 <15 
    		puts 'Pitomec spit! ly4we ego ne bydit'
		else
			puts 'Vu y4ite' + @name + '(a)'
			@mood = @moodVar[1]
			@mind = @mind +1
			@angry = @angry+1
			passageOfTime
		end
    end
    
    def forget
    	@t1 = Time.new.to_i
    	if @asleep or @t0-@t1 <15 
    		puts 'Pitomec spit! ly4we ego ne bydit'
    	else 
			puts 'Vu zabuli pro vashego' +@name+ '(a)'
			@care = @care - 2
			@stuffInBelly = @stuffInBelly - 1
			@angry = @angry + 1
			puts @name + ' begaet v nevedan\'e vokryg stola'
			kick
			passageOfTime
		end
    end
    
    def wakeUp
    	@t1 = Time.new.to_i
    	if @asleep and @t0-@t1 <15 
    		@asleep = false
    		puts 'Vu bydite' +@name+ '(a)'
			@angry = @angry + 1
			@mood = @moodVar[0]
			passageOfTime
		else
			puts 'Pitomec i tak ne spit :)'
		end
		
	end		   	
   
    def kick
    	@t1 = Time.new.to_i
    	if @asleep or @t0-@t1 <15 
    		puts 'Pitomec spit! ly4we ego ne bydit'
    	else
    		puts 'Vu podstavili podnozhky ' +@name+' , on ypal i ispa4kalsya'
    		@care = @care - 1
    		@angry = @angry +1 
    		@mood = @moodVar[0]
    		@purity = @purity + 2
    		@hp = @hp - 20
    		passageOfTime
    	end
    end
    def toy
    	puts @name+ 'Balyetsa!'
    	puts 'yspokaivaya ego, '
    	kick
private
  
  #  "private" означает, что определённые здесь методы являются
  #  внутренними методами этого объекта.  (Вы можете кормить
  #  вашего дракона, но не можете спросить его, голоден ли он.)
  
  def hungry?  #  голоден?
    #  Имена методов могут заканчиваться знаком "?".
    #  Как правило, мы называем так только, если метод
    #  возвращает true или false, как здесь:
    @stuffInBelly <= 2
  end
  
  def dirty?  #  gryaznui
    @purity > 6
  end
  
  def angered?
  	@angry >= 5
  end
  
  def spoiled? 
  	@care >= 10 or @mind <=3
  end
  
  def moodBbed?
  	@mood = @moodVar[0]
  end
  
  def learned?
  	@mind <= 5
  end
  
  def passageOfTime # проходит некоторое время
    if @stuffInBelly > 0
      #  Переместить пищу из желудка в кишечник.
      @stuffInBelly     = @stuffInBelly     - 1
     
    elsif @asleep
        @asleep = false
        puts 'Он внезапно просыпается!'
    end
      puts @name + ' проголодался! Доведённый до крайности, он съедает ВАС!'
      exit  #  Этим методом выходим из программы.
    end
    
    
    
    if hungry?
      if @asleep
        @asleep = false
        puts 'Он внезапно просыпается!'
      end
      puts 'В желудке у ' + @name + '(а) урчит...'
    end
    
    if dirty?
      if @asleep
        @asleep = false
        puts 'Он внезапно просыпается!'
      end
      puts @name + ' zapa4kalsya, bulo bu neploho pokypat\' ego'
      if @purity >= 20
      	puts' komy nyzhen takoi gryaznylya? vu vubrasivaete ego na ylicy...'
      	exit
      end
    end
    if @purity <=5
    	@dirtty = 5
    end
    
    if angered?
    if @asleep
        @asleep = false
        puts 'Он внезапно просыпается!'
    end
     puts @name+ ' stal zol, poigraite s nim!'
   
     if @angry>= 10
   		puts @name+ 'kraine razozlilsya i poslal na vas 4ari strawnie!'
 		exit
 	 end
 	end
 	
 	if @angry<=0
     	@angry = 2   
    end
    
    if spoiled?
    	puts @name + ' stal o4en neposlywnum '	
    	toy
    end
    
    puts @name+'(s) mood is '+ @mood
    
    if moodBbed?
    	puts @name +' ne veselo, razveselite'
    end
    
    if learned?
    	puts @name +' ne xo4et y4itsya!'
    	if @mind <=0
    		puts 'ex....zapystili obrazovanie, teper to4no na geekhub ne proidet('
    		exit
    	end
    end
    
    if @mind >=20
    	puts @name +' poshel v Nobelevskie laureatu, vu emy sovsem ne nyzhnu teper'
    	exit
	end
	
	if @hp <=0
		puts 'Ne vuderzhal takix nagryzok...RIP'
		exit
	elsif  @hp >100
		@hp =100
	end  
  end 
  end  
 
vasyl = Pet.new 'Vasya'
vasyl.feed	
