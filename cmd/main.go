package main

import (
	"fmt"
	"os"
)

func main() {
	dbHost := os.Getenv("DB_HOST")
	dbPort := os.Getenv("DB_PORT")
	fmt.Printf("Подключение к базе данных на %s:%s\n", dbHost, dbPort)
	// Остальная логика приложения
}
