# frozen_string_literal: true

class TestSite
    def main
      @main ||= Main.new
    end
  
    def login
      @login ||= login.new
    end
  end
