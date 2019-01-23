alias dps="docker ps -a --format 'table {{.Names}},{{.Image}},{{.Status}}' | column -s ',' -t"
