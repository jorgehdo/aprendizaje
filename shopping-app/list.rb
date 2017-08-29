require "./item.rb"
class List
  attr_writer :items
  # initialize el metodo para realizar todos los item que van
  #dentro del arreglo
  def initialize()
    @items = Array.new()
  end
  # metodo para añadir nuevo elemento a la lista
  def add_item(text)
    item = Item.new(text)
    @items.push(item)
  end
  # metodo para remover un articulo
  def remove_item(index)
    @items.delete_at(index)
  end
  # para marcar con x en el indice
  def check_item(index)
    @items[index].checked = true
  end
  # metodo para remover todo
  def remove_all
    @items.clear
  end
  # para mostrar todos los item
  def show_all
    if @items.length == 0
      puts "no hay articulos en tu lista de compras"
    end
    @items.each_index do |index|
      puts index.to_s + " - " + @items[index].to_s
    end
  end
end


