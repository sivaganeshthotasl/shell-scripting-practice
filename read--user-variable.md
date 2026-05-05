### Read User Input ###

```read``` is used to take input from user

🔹 Task 1

```
Enter your name:
Hello Siva
```

🔹 Task 2

Ask:

→ name

→ city

```
Siva lives in Bangalore
```

🔹 Task 3

Ask:

```
Enter your role:
```

Print:

```
You are working as DevOps Engineer
```

🔹 Task 4 (thinking)

Ask:

```
Enter two numbers:
```

```
You entered 10 and 20
```

(Hint: read a b)


Task 5

```
Ask name and role in one line
```

Hint:

```
read name role
```

Expected:

```
Siva DevOps
Siva is working as DevOps
```

option1

```
read -p "Enter your name: " name
read -p "Enter your role: " role

echo "$name is working as $role"
```
Option2

```
echo "Enter your name and role:"
read name role

echo "$name is working as $role"
```




