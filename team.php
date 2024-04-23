<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Team Members</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header>
        <h1>Team Members</h1>
    </header>
    <nav>
        <ul>
            <li><a href="index.html">Home</a></li>
            <li><a href="team.php">Team</a></li>
        </ul>
    </nav>
    <main>
        <h2>Team Data</h2>
        <?php
        // Connect to database
        $db = new PDO('mysql:host=localhost;dbname=your_database_name', 'username', 'password');
        
        // Fetch team data
        $query = $db->query("SELECT * FROM team");
        $team = $query->fetchAll(PDO::FETCH_ASSOC);
        
        // Display team data
        echo "<table border='1'>
                <tr>
                    <th>Name</th>
                    <th>ID</th>
                    <th>Age</th>
                    <th>CGPA</th>
                </tr>";
        
        foreach ($team as $member) {
            echo "<tr>
                    <td>".$member['name']."</td>
                    <td>".$member['id']."</td>
                    <td>".$member['age']."</td>
                    <td>".$member['cgpa']."</td>
                </tr>";
        }
        
        echo "</table>";
        ?>
    </main>
</body>
</html>