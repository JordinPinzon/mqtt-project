require 'mqtt'

# Parámetros de conexión
host = 'broker.hivemq.com'
port = 1883
topic = 'mi/tema'

# Crear el cliente MQTT
mqtt_client = MQTT::Client.new
mqtt_client.host = host
mqtt_client.port = port

# Conectar al servidor
mqtt_client.connect do |client|
  puts "Conectado al servidor MQTT"

  # Suscribirse al tema
  client.subscribe(topic)
  puts "Suscrito al tema '#{topic}'"

  # Publicar un mensaje en el tema
  client.publish(topic, "¡Hola, MQTT!")

  # Mantener la conexión abierta y escuchar mensajes
  client.get do |topic, message|
    puts "Mensaje recibido en el tema '#{topic}': #{message}"
  end

  # Mantener la conexión viva
  loop do
    sleep 1
    puts "Esperando mensajes..."
  end
end
