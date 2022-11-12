from uvicorn import Config, Server  # type: ignore

if __name__ == "__main__":
    server = Server(
        Config(
            "app:app",
            host='localhost',
            port=8089,
        ),
    )

    server.run()