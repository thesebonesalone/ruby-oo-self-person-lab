# your code goes here






class Person
    attr_accessor :bank_account
    attr_reader  :happiness, :hygiene, :name



    def initialize(name,bank_account = 25,happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness= (happiness)
        if happiness > 10
            happiness = 10
        end
        if happiness < 0
            happiness = 0
        end
        @happiness = happiness
    end
    def hygiene= (hygiene)
        if hygiene > 10
            hygiene = 10
        end
        if hygiene < 0
            hygiene = 0
        end
        @hygiene = hygiene
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end
    def take_bath
        self.hygiene = @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = @happiness + 2
        self.hygiene = @hygiene - 3
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness = @happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person,topic)
        if topic == "politics"
            person.happiness = person.happiness - 2
            self.happiness = @happiness - 2

           return "blah blah partisan blah lobbyist" 
        end
        if topic == "weather"
            person.happiness = person.happiness + 1
            self.happiness = @happiness + 1


            return "blah blah sun blah rain"
        end
        
        "blah blah blah blah blah"
    end














end
