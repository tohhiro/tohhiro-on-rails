names = ["Alice", "Bob", "Charlie"]
names2 = %w(Alice Bob Charlie) #これでも同じ配列が作れる
p names
p names2

# 配列をカンマ区切りで連結
connected_names = names.join(", ")
p connected_names

