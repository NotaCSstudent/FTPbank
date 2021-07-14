# FTPBank
# To work on the backend (server)
1. Ensure you have pipenv installed, if not ``pip install pipenv``
2. Run ``pipenv install``, this will install the dependencies from ``Pipfile.lock``
3. Should you install a new package, just run ``pipenv install [package_name]
4. The newly installed package will be added to ``Pipfile.lock``
5. Once all the packages are set up, run ``pipenv shell``, this is a virtual environment type of shell
6. To run the app, do ``cd /server/``, then do ``pipenv run python app.py``, if that doesn't work, do ``flask run``
7. You should be able to see the flask server launch up
8. To exit the pipenv shell just do ``exit``

# To work on the frontend (client)
1. Install the flutter tools https://flutter.dev/docs/get-started/install
2. For android or iOS development, install the proper emulators (Android studio or Xcode)
3. Run ``flutter doctor`` to see accept the terms and to see if anything is missing, this will also allow you to obtain the sdks for web development
4. Install the dart and flutter tools in VsCode
5. To run the app, ``cd /client/lib`` and run the app in VsCode
6. Choose the proper emulator, it it does not appear, look for the DartDevTools in the bottom right corner of VsCode and click on the text next to it
7. The app should run now and you are greeted with a sign in screen
