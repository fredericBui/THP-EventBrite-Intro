class Event < ApplicationRecord
    #Comment checker le multiple de 5 ?
    validates :duration, numericality: { greater_than: 0 }
    validates :title, presence: true , length: { minimum: 5, maximum: 140 }
    validates :description, presence: true , length: { minimum: 20 , maximum: 1000 }
    validates :location, presence: true
end