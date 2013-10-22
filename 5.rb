class MagicBall
  
  def initialize
	
	@a = { 1=>'good', 2=>'bad', 3=>'awesome'}
  end
 
  def shake

	puts 'wait wait...'
	sleep(3)
	puts @a[1+rand(3)]
  end
end
newrole = MagicBall.new
newrole.shake
