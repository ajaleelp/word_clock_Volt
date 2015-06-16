# By default Volt generates this controller for your Main component
module Main
  class MainController < Volt::ModelController

    require 'main/lib/livetime'

    def index
      # Add code for when the index view is loaded
    end

    def current_time
      Time.now.live
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
      rounded_minutes == 30
    end
    def ten?
      (rounded_minutes-30).abs == 20
    end
    def quarter?
      (rounded_minutes-30).abs == 15
    end
    def twenty?
      (rounded_minutes-30).abs < 15
    end
    def five?
      (rounded_minutes-30).abs == 25 || (rounded_minutes-30).abs == 5
    end
    def minutes?
      rounded_minutes%15 != 0
    end
    def to?
      rounded_minutes%60 > 30
    end
    def past?
      rounded_minutes > 0 && rounded_minutes < 35
    end
    def oclock?
      rounded_minutes%60 == 0
    end
    def n1?
      hour_to_show == 1
    end
    def n2?
      hour_to_show == 2
    end
    def n3?
      hour_to_show == 3
    end
    def n4?
      hour_to_show == 4
    end
    def n5?
      hour_to_show == 5
    end
    def n6?
      hour_to_show == 6
    end
    def n7?
      hour_to_show == 7
    end
    def n8?
      hour_to_show == 8
    end
    def n9?
      hour_to_show == 9
    end
    def n10?
      hour_to_show == 10
    end
    def n11?
      hour_to_show == 11
    end
    def n12?
      hour_to_show == 12
    end

    def hour_to_show
      current_time.hour%12 + (rounded_minutes%60 > 30 ? 1 : 0)
    end

    def rounded_minutes
      ((((current_time-150).min)/5).to_i+1)*5
    end


  end
end
