cuentaRegresiva :: Int -> IO ()
cuentaRegresiva n | n <= 0 = putStrLn "¡Despegue! "
cuentaRegresiva n = do
    print n
    cuentaRegresiva (n - 1)