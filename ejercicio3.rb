
  def initialize
    mainMenu
  end

  def navigateTo(what)
    what.new.display
    mainMenu
  end

  def mainMenu
    puts "Menu"
      1: ingresar datos personales
      2: Editar datos personales
      3: Cantidades de personales personales
      4: Mostrar comunas de todas las personas
      5: salir
     
case gets.strip
  when "1"
    navigateTo Module
    addModule
  when "2"
    navigateTo Module
  when "3"
    navigateTo Module
  when "4"
    navigateTo Module
  when "5"
    navigateTo Student
  when "6"
    navigateTo Student
  when "7"
    navigateTo Student
end
end
Application.new
end