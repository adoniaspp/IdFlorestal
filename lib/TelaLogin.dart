import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

//void main() => runApp(TelaLogin());

class TelaLogin extends StatefulWidget {
  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipOval(
                child: Image.network('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAMFBMVEXMzMzr6+vOzs7U1NTk5OTq6urX19fn5+fQ0NDc3Nzh4eHS0tLi4uLZ2dnd3d3JycnUSnKIAAAErklEQVR4nO2dyZaDIBBFjUOcovz/33aIbUc7RgWqqIen7i67vFMzIGSZoiiKoiiKoiiKoiiKoiiKoiiKoiiKoiiKoiiKoiiKoiiKoiiKoig+mCdZllv+fl0FkzXF0JV1dVtQ1eU4FHmWvE6TFWO5kramKtsiYZUmu5ffxb153NMUafpT8iZTdk1yGk1Rn9b3oiyS0uisz1L36WjMz/vnik76j5/E3P30PamScFXTeQt8MuJLzD0icEkpLeCIfKe8n6OWlrBPEywQXGK4BdElBsbgTImabsKy6JIWVKJ/HfygkNaySU4n8FZJi9nCeLZq23SAfkroo5ZeWs8HhqRQvMHLpwOtQMBkQ2zCZ90HMyK5CdGMaIi6mSUPKCP29AJvt1xa1QK6fm3JIC1rCXmesSDlmoJDIJSbjjwKcdyUup+ZwelrKKeKJTgTBnHT/Qam/WapFRaUQORoaCZgpkQugTAVsWFTeJOW9gtTvbc00tomGCanGZAJiqmjsWAkU9pFtjWjtLgXfMUCpVxwdaUWkM6UTyBIQeTqu18KpcW94FSIMV0wtjQgTY0qVIW7QCxGqUJViK+Qsx5iZJrLK8xZFebibsqz67RE+jwm4wrGzF1UIOf0OyM7QbFWihnRUGTbsVgiuuAWIQyFF9wYFxLftJdXKLqkeH0btpdXGCXTiJZ8xm2nN6LV4voVn3WumBHt2mL0pcJ7F+zDk/gOW4TGVHgfOEIgCk/5/IEovoXIXvPFt/LZ3VRaIOs5BQvATj5z4wZwPJE314jnGQurEQFMyBuJAFFo4UunGAcVMkY/hfBRS8BNGLuAnEx80TAk1FJ822kFgxWRLJixZBtpSf+gr/sQtX4J+Ywhu224AbmbSgv6gLqzAelmlhCXfZDvEFaQ5hq4PGMhzTUw/doSyhPtkCYk7WsQozCjrPqAiXSC7N4BaSFfoToCBtZzryBJNrA+aqHwU5ili00MQVEEzaMz5hEqEG6m+E9oyRiQg/CXIImot+2tCZAofSD4JP6XtKZhQYunxBRicMZr4E/imuQZ436kr8ZaAD7E9I4NHHSr9gU3T4Uc6g9wO9WHPE98w60LV4WIqML0FbplmoQet5g4+8bMH2Vij80UPmtSXSqeaprRd0GqGvGd1TRD2JBft8jPBplsoNhFLAfMkDRZEbwK9RaJl3dM3xFfpgSVd0zTctwVVY0YIWnywNyyRz3kwiKdC7s7siHpVdjdeci8IGh678LuTtXFbgVM3kb4pmstMmYrYAru4Nsm0guCT/PF887/VCN7bn1WdjF5E7wRKeWea+o7m8Z77OzyjZpnG3WQC79PKvpdHCh9lorUjl4vp7JTkxUPl5d941IS5VXp+rAHwfOzXN/DkBFaOnyf9o1I0Lc1FEecIhBgRrqlJV58o5HiYdhI1D6H4eBTzBp3T/U4TSGL62kj/hsfyXE7zRF+iFIAl8f2khToIjFBF504e7QxkTq/xcmpMcoVZUycO1ol/S9DOHPQP9EsM3OiZqTso5bDbccYN7CxcnjtcFrd6BYHRkzehIdfZ0a56pGZ/UkqtYlii937z7hv7orCrpsa6X9HwtXDcD8QUy/3E+sdjR+8ulOa5nGYeQAAAABJRU5ErkJggg==')),
              RaisedButton(
                onPressed: () {},
                child: Text(
                  "Iniciar Sessão",
                  style: TextStyle(color: Colors.deepPurple),
                ),
              ),
              SignInButton(
                Buttons.Google,
                text: "Entrar com o Google",
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
              SignInButton(
                Buttons.Facebook,
                text: "Entrar com o Facebook",
                onPressed: () {},
              ),
            ],
          ),
        ),
      );  
  }
}