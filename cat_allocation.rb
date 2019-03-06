#Define a method cat_suitability which takes the user requirements and cat database, and loops through the cat database to find cats which are most suitable for the user
  #Discard the cats which do not meet all the mandatory requirements
  #Record how many preferences each cat meets
  #Return an array of either the highest ranked cat or if there are multiple cats which are the highest return them

  def cat_suitability (database, user_requirements)
#take user requirements
#loop through cat database to find cats which are most suitable for the user
#find highest ranked cat

#Setup a hash to record our suitable cats
suitable_cats = {}

#Loop through the database to find if cat meets all mandatory criteria and number of preferences
for cat in database
    for criteria in user_requirements
        if criteria == user_requirements

#loop through cat database figuring out if all the requirements 
  end