# MQTT Ruby Application

This is a simple MQTT-based application implemented in Ruby. The client connects to an MQTT broker, subscribes to a topic, and sends a message to that topic.

## Requirements

Before running the application, make sure you have the following:

- Ruby 3.3 or higher
- `mqtt` gem installed

## Installation and Running

### Option 1: Run Locally

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/JordinPinzon/mqtt-project.git
    cd your_repository
    ```

2. Install the required dependencies:

    ```bash
    gem install mqtt
    ```

3. Run the application:

    ```bash
    ruby mqtt_client.rb
    ```

    The client will connect to the MQTT broker at `broker.hivemq.com`, subscribe to the topic `mi/tema`, and publish a message to that topic. You should see the greeting message printed to the terminal once the message is received.

### Option 2: Run with Docker

If you want to run the app inside a Docker container, follow these steps:

1. Build the Docker image:

    ```bash
    docker build -t mqtt-ruby .
    ```

2. Run the Docker container:

    ```bash
    docker run -it mqtt-ruby
    ```

    The client will connect to the MQTT broker, subscribe to the topic `mi/tema`, and print the message received from the topic.

## Important Files

- `mqtt_client.rb`: The main Ruby file that implements the MQTT client, connects to the broker, subscribes to a topic, and publishes a message.
- `Dockerfile`: The file used to build the Docker image for running the application inside a container.
- `Gemfile`: Contains the dependencies needed to run the application, including the `mqtt` gem.

## Contributing

If you wish to contribute to this project, please fork the repository, make your changes, and then open a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
