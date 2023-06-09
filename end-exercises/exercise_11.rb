=begin 
Write a program that copies the information from the array into the empty hash that applies to the correct person

Expected output: 
{
"Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
"Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.", :phone=>"123-234-3454"}
}

PEDAC

Problem: Copy information from array into empty hash
        Input: Array
        Output: Hash containing contents of input array
        Rules:
         - information must apply to correct person
         - data must end up in a hash
         - hash key should be a symbol

Examples: contact_data = ["joe@email.com"]
          contacts = {"Joe Smith" => {:email => "joe@email.com"}}

Data Structure: 
          - Array
          - Hash

Algorithm: 
          - Separate data from each array
          - Create a key with hash as value for each contact
          - Assign each piece of data from array as a value to correct key in hash specific to each contact
          
          
Code: 

=end 

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

#def copy_data(contact_data, contacts)
  

joe_array = contact_data[0]
joe_hash = {email: joe_array[0], address: joe_array[1], phone: joe_array[2]}
sally_array = contact_data[1]
sally_hash = {email: sally_array[0], address: sally_array[1], phone: sally_array[2]}
contacts["Joe Smith"] = joe_hash
contacts["Sally Johnson"] = sally_hash

p contacts