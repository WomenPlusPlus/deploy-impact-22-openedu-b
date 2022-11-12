from uvicorn import Config, Server  # type: ignore

if __name__ == "__main__":
    server = Server(
        Config(
            "service.app:app",
            host='0.0.0.0',
            port=8089,
        ),
    )

    server.run()