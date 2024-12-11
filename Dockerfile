# Usar una imagen base de Ruby
FROM ruby:3.3.6

# Instalar dependencias necesarias
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar los archivos del proyecto al contenedor
COPY . .

# Instalar las gemas necesarias
RUN gem install mqtt

# Comando para ejecutar el script cuando se inicie el contenedor
CMD ["ruby", "mqtt_client.rb"]
