package model

import (
	"github.com/uptrace/bun"
)

type Todo struct {
	bun.BaseModel `bun:"table:todo,alias:t"`

	ID     string `json:"id" bun:",pk"`
	Text   string `json:"text" bun:"text"`
	Done   bool   `json:"done" bun:"done"`
	UserID string `json:"userId" bun:"user_id"`
}
