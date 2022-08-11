# your code goes here

class Person
attr_reader :name
attr_reader :bank_account
attr_reader :happiness
attr_reader :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def bank_account=(balance)
        @bank_account = balance
    end
    def happiness=(value)
        @happiness = value
        @happiness = 10 if (value >= 10)
        @happiness = 0 if (value <= 0)
    end
    def hygiene=(value)
        @hygiene = value
        @hygiene = 10 if (value >= 10)
        @hygiene = 0 if (value <= 0)
    end
    def clean?
        @hygiene > 7 ? true : false
    end
    def happy?
        @happiness > 7 ? true : false
    end
    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        case topic
        when "politics"
        self.happiness -= 2
        friend.happiness -= 2
        return "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
        
    end
end

myPerson = Person.new("Sally")
myPerson.happiness = 9
p myPerson.happiness