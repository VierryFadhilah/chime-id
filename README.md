## Api Specs

### Get List Product Name

request:

- method : GET
- Endpoint : `/api/product`
- Header :
  - Accept : application/json

response:

```json
{
  "code": "number", //RESPONSE CODE ("200" , "400", etc...)
  "status": "string", //RESPONSE STATUS
  "data": [
    {
      "productId": "number",
      "name": "string" //Product Name

    },
    {
      "productId": "number",
      "name": "string"

    },
    ...
  ]
}
```

### Get List Script Name

request:

- method : GET
- Endpoint : `/api/script`
- Header :
  - Accept : application/json
- Query Param :
  - product : { product_id }

response:

```json
{
  "code": "number", //RESPONSE CODE ("200" , "400", etc...)
  "status": "string", //RESPONSE STATUS
  "data": {
    "scriptId": "number",
    "scriptAlias": "string", //Script Name
    "scriptText": "string"
  }
}
```

### Create Tag or Get Tag counter

request:

- method : PUT
- Endpoint : `/api/tag_counter`
- Header :
  - Accept : application/json
- Body:

```json
{
  "script_id": "number", //{script_id}
  "tag": "string" // { tag }
}
```

response:

```json
{
  "code": "number", //RESPONSE CODE ("200" , "400", etc...)
  "status": "string", //RESPONSE STATUS
  "data": {
    "hashtagId": "number",
    "sentAmount": "number"
  }
}
```

### Send Active Number

request:

- Method : POST
- Endpoint : `/api/active_number`
- Header :
  - Content-Type : application/json
  - Accept : application/json
- Body :

```json
{
  "phoneNumber": "number",
  "sentBy": "string", //userId
  "dateSend": "date",
  "productId": "number/null",
  "hashtagId": "string",
  "sentAmountPlusOne": "number" //{sentAmount} + 1
}
```

response :

```json
{
  "code": "number",
  "status": "string",
  "message": "string"
}
```

### Get Number List

request:

- method : GET
- Endpoint : `/api/number`
- Header :
  - Accept : application/json
- Query param :
  - product_id : { product_id }
  - request_by : { user_id }

response:

```json
{
  "code": "number", //RESPONSE CODE ("200" , "400", etc...)
  "status": "string", //RESPONSE STATUS
  "data": [
    {
      "phoneNumberId": "number", //must unique
      "phoneNumber": "number",
      "haveDone": "string" //Product haveDone

    },
    {
      "phoneNumberId": "number",
      "phoneNumber": "number",
      "haveDone": "string"

    },
    ... // up to 200

  ]
}
```

### Set Have Done

request:

- method : PUT
- Endpoint : `/api/list_number`
- Header :
  - Accept : application/json
- Body :

```json
{
  "script_id": "number", //{ script_id }
  "tag": "string" //{ tag }
}
```

response:

```json
{
  "code": "number", //RESPONSE CODE ("200" , "400", etc...)
  "status": "string", //RESPONSE STATUS
  "message": "string"
}
```
