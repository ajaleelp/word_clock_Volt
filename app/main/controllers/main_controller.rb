# By default Volt generates this controller for your Main component
module Main
  class MainController < Volt::ModelController
    def index
      # Add code for when the index view is loaded
    end

    def about
      # Add code for when the about view is loaded
    end
    private

    # The main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._component, params._controller, and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end

    def half?
      false
    end
    def ten?
      true
    end
    def quarter?
      false
    end
    def twenty?
      false
    end
    def five?
      false
    end
    def minutes?
      true
    end
    def to?
      true
    end
    def past?
      false
    end
    def n1?
      false
    end
    def n2?
      false
    end
    def n3?
      false
    end
    def n4?
      true
    end
    def n5?
      false
    end
    def n6?
      false
    end
    def n7?
      false
    end
    def n8?
      false
    end
    def n9?
      false
    end
    def n10?
      false
    end
    def n11?
      false
    end
    def n12?
      false
    end


  end
end
