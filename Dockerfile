# Yordamchi imkoniyatlarni oshirish uchun asosiy obrazni olib kelamiz
FROM node:14.17.0-alpine

# Ish jarayonida ishlatiladigan ishchi direktoriya
WORKDIR /app

# Package.json faylini vaqti boricha kopyalaymiz
COPY package*.json ./

# Zarur modullarni o'rnatish
RUN npm install

# Barcha frontend kodlarini kopyalaymiz
COPY . .

# Frontendni ishga tushiramiz
CMD ["npm", "start"]