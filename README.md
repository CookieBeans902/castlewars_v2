# 🏰 CastleWars Remastered (Minecraft Datapack)

An optimized, customizable multiplayer minigame datapack for Minecraft 1.21+. 

CastleWars Remastered is built from the ground up for server performance and zero-latency multiplayer concurrency. It abandons traditional, lag-heavy tick loops in favor of a modern, event-driven architecture and dynamic macro routing.

### History
CastleWars began as a passion project with my friends back when I was a standard Minecraft player with no foundational knowledge of computer science, programming, or datapack development. It started as a hobby where I learned new concepts on the go and stitched the game logic together as best as I could. Because of this, the original systems were highly coupled. I even relied on physical command blocks with hardcoded relative coordinates inside the map, which made it nearly impossible to adapt the game to different arenas.

With my new knowledge of game development and architecture, I realized it would be much better to start from scratch. I wanted to engineer a properly optimized, modular, and customizable datapack so anyone could easily use and tweak the minigame to their own preferences.

This remaster was primarily driven by two reasons:
- Recent Minecraft updates changed how the game handles NBT data and commands, which caused the old datapack to be incompatible with the latest versions.

- The original datapack, built nearly 4 years ago, relied entirely on brute-force checking ( $O(N)$ tick loops ) and tightly coupled logic that could no longer scale.

### STATUS : UNDER DEVELOPMENT