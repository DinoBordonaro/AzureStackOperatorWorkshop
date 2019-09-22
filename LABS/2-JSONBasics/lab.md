# JSON Basics

## Basics
- Create a new folder > c:\_DEVELOPMENT\jsondemo1
- In Visual Studio Code navigate to the newly created folder
- Create a new file > demo.json
- Add this content:
    {
        "Workshop": "Azure Stack Operator Training",
        "Date": "17/09/2019"
    }
- Enter "$json = get-content demo.json" to read and store the json content
- Enter "$json" to show the content

## Convert to Powershell Object
- Enter "$json = $json | convertfrom-json" to convert the content into a Powershell object
- Enter "$json" to show the content

## Objects
- Extend the json demo file with an object
    {
    "Workshop": "Azure Stack Operator Training",
    "Date": "22/09/2019",
    "Location": {
        "Street": "Wormser Landstraße 83a",
        "City": "Speyer",
        "Country": "Germany"
        }
    }
- Enter "$json = get-content demo.json | convertfrom-json"
- Enter "$json" to show the content
- Enter "$json.location" and "$json.location.city" to access the object properties

## Arrays
- Extend the json demo file with an array
    {
    "Workshop": "Azure Stack Operator Training",
    "Date": "17/09/2019",
    "Location": {
        "Street": "Wormser Landstraße 83a",
        "City": "Speyer",
        "Country": "Germany"
    },
    "Attendees": [
        {
            "Firstname": "Moritz",
            "Lastname": "Meier"
        },
        {
            "Firstname": "Hannah",
            "Lastname": "Hofer"
        }
        ]
    }
- Enter "$json = get-content demo.json | convertfrom-json"
- Enter "$json" to show the content
- Enter "$json.attendees" to access the array objects
- Enter "$json.attendees[0] to access the first object in the array
- Enter "$json.attendees[0].Firstname to access a specific property of the first object in the array