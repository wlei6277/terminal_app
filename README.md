RESCUE CAT MATCHER APP



PROJECT FILES

All project files can be found at https://github.com/wlei6277/terminal_app



DESCRIPTION

Purpose

- Match rescue cats across different shelters in NSW to members of the public who want to adopt a cat. 

- Ensures that cats are matched to suitable owners based on a set of mandatory criteria.

- Present eligible cats to users to select for adoption.

  

Functionality

1. The app takes information from the user on a number of specified criteria.
2. The app then loops through cat database, recording if each cat meets the criteria of the user.
3. The app filters all cats which do not match on mandatory criteria.
4. The app then ranks any remaining cats according to how many of the user's criteria are met.
5. If there is at least one cat that meets the user's mandatory criteria, the user is presented with the eligible cats in order of closest match. 
6. User can choose to adopt or not adopt a cat. 
7. If the user does not choose to adopt any matching cats, a message prints to the screen.
8. If there are no cats that match the user's mandatory criteria a message prints to the screen informing the user of this. 



Code Structure

* Four key methods are used in the code. 

1. rank_cats - this takes the cat database and user criteria as arguments and loops through the cat database to record the matching between each cat and the user requirements. 
2. filter_cats - this takes an array of cats which have been matched against user criteria and returns an array of cats which meet the exact match requirements (toilet_trained and cat personality.) 
3. sort_cats - this takes the filtered cats array as an argument and orders the cats according to the amount of criteria they matched (the cat that matched the most of the user's criteria will be the first in the array).
4. pick_cats - this takes the sorted cats as an argument and when called prompts the user to pick a cat for adoption. 

* There are two main parent class types and five child classes (these have been put into separate files for readability and testing purposes)
  * Each cat in the database is an object which is instantiated at the beginning of the program.
  * Each criteria is an object. When each object is instantiated the user is prompted for information. 



Ethical Considerations

* By definition, the rescue cats are in the shelter because they have already been abandoned.

* The shelter will want to minimise the chance of any adopted cat being abandoned again so the app tries to match potential owners with the best matching cats.

* To improve the chance of a good match, two of the criteria require an exact match in order to be displayed to the user:

  1. The cat must meet the user's preferences for toilet trained. 
  2. The cat must meet the user's lifestyle requirements. To determine this, the hours that the user will leave the cat alone needs to match the cat's personality type. 

  

Scope for further development 

* Further features for the user (cat adopter) could include:

  - Show pictures of the matched cat to the user
  - Enable the user to save a profile in a database so that they can be emailed if a new matching cat is entered into the system. 
  - Improve user interface.

* This app could also be further developed on the organisation (cat shelter) side e.g.

  * Enable the cat shelter to upload details of cats into the database in line with the specified criteria.
  * Enable the cat shelter to view all currently held cats. (some starter code is in the file user_start.rb but needs to be updated to match data types used in the main app files as well as other updates).
  * Enable the cat shelter to delete cats from the database eg. once adopted.
  * Enable the cat shelter to edit cat details. 

  

INSTRUCTIONS FOR USE

1. Run the ruby index.rb file in your shell/ terminal.
2. The app will prompt you to enter information in a specified format. If you do not enter in the specified format, you will be asked to input the value again.
   1. First you will be asked to put in information about whether you require a toilet-trained cat. An exact match between cat and user in this field in order for the user to be eligible to adopt this cat.   
   2. You will be asked for information about how many hours you expect to leave the cat alone per week. An exact match between cat and user in this field in order for the user to be eligible to adopt this cat.    
   3. You will be asked to put in information about your location. 
   4. You will be asked to enter the breeds you like. This is done one at a time. After you have selected a breed, you will be prompted to see if there are any other breeds you like, if not just enter none.
   5. You will be asked to enter the color cats you like in the same fomat as (4.)
3. If there are any cats that meet the exact match criteria, these will be displayed to you individually in order of closest match. 
   1. You will be prompted to either adopt or not adopt the cat.
   2. You will need to type your answer in the specified format, otherwise you will be prompted again.
   3. If you choose to adopt the cat, a message will print to the screen confirming your selection. 
   4. If you choose not to adopt the cat, you will be prompted to either adopt or not adopt the next closest match cat (if any). 
4. If there are no cats that meet the exact match criteria, a message will print to the screen informing you that there are no suitable cats. 



Screenshots

*User putting in information about preferences*

![](https://github.com/wlei6277/terminal_app/blob/master/docs/Screenshot%201.PNG"")

*Example of user being shown an eligible cat to adopt*

![](https://github.com/wlei6277/terminal_app/blob/master/docs/Screenshot%202.PNG"")

*Another example of user being shown eligible cat to adopt*

![](https://github.com/wlei6277/terminal_app/blob/master/docs/Screenshot%203.PNG"")

DESIGN & PLANNING PROCESS

Idea brainstorming for app - evidence

![](https://github.com/wlei6277/terminal_app/blob/master/docs/IMG_app_options.jpg"")

![](https://github.com/wlei6277/terminal_app/blob/master/docs/IMG_initial_code_design.jpeg "")

![](https://github.com/wlei6277/terminal_app/blob/master/docs/IMG_initial_high_level_design.jpeg"")

![](https://github.com/wlei6277/terminal_app/blob/master/docs/IMG_initial_project_plan.jpeg"")

![](https://github.com/wlei6277/terminal_app/blob/master/docs/IMG_initial_variable_outline.jpeg"")





app User/Workflow diagram 

![](https://github.com/wlei6277/terminal_app/blob/master/docs/IMG_workflow_diagram.jpeg)



Project Plan & Timeline (Trello board)

![](https://github.com/wlei6277/terminal_app/blob/master/docs/Tello%20board.png"")



Team communication on slack

![](https://github.com/wlei6277/terminal_app/blob/master/docs/IMG_slack_communication.png"")



User stories

![](https://github.com/wlei6277/terminal_app/blob/master/docs/IMG_user_stories.jpeg"")